import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum CreditType {
  postUpdate,
  sendMessage,
  sendPicture,
  sendVoice
}

class CreditManager {
  static final CreditManager _instance = CreditManager._internal();
  
  factory CreditManager() {
    return _instance;
  }
  
  CreditManager._internal();
  
  // Get the balance for a specific credit type
  Future<int> getBalance(CreditType type) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      switch (type) {
        case CreditType.postUpdate:
          return prefs.getInt('post_update_balance') ?? 0;
        case CreditType.sendMessage:
          return prefs.getInt('send_message_balance') ?? 0;
        case CreditType.sendPicture:
          return prefs.getInt('send_picture_balance') ?? 0;
        case CreditType.sendVoice:
          return prefs.getInt('send_voice_balance') ?? 0;
      }
    } catch (e) {
      debugPrint('Error getting credit balance: $e');
      return 0;
    }
  }
  
  // Consume one credit of the specified type, returns true if successful
  Future<bool> consumeCredit(CreditType type) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      int currentBalance;
      String key;
      
      switch (type) {
        case CreditType.postUpdate:
          key = 'post_update_balance';
          currentBalance = prefs.getInt(key) ?? 0;
          break;
        case CreditType.sendMessage:
          key = 'send_message_balance';
          currentBalance = prefs.getInt(key) ?? 0;
          break;
        case CreditType.sendPicture:
          key = 'send_picture_balance';
          currentBalance = prefs.getInt(key) ?? 0;
          break;
        case CreditType.sendVoice:
          key = 'send_voice_balance';
          currentBalance = prefs.getInt(key) ?? 0;
          break;
      }
      
      // Check if user has enough credits
      if (currentBalance <= 0) {
        return false;
      }
      
      // Deduct one credit
      int newBalance = currentBalance - 1;
      await prefs.setInt(key, newBalance);
      return true;
    } catch (e) {
      debugPrint('Error consuming credit: $e');
      return false;
    }
  }
  
  // Check if the user has credits and navigate to purchase screen if needed
  Future<bool> checkCreditsAndProceed(
    BuildContext context, 
    CreditType type,
    {int initialTabIndex = 0}
  ) async {
    final hasCredit = await getBalance(type) > 0;
    
    if (!hasCredit) {
      // Show dialog with appropriate message before navigation
      if (context.mounted) {
        final String message = _getCreditTypeMessage(type);
        final IconData creditIcon = _getCreditTypeIcon(type);
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFF5D0FE),
                        Color(0xFFEE71F9),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    creditIcon,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Credit Required',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A4A4A),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            content: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                message,
                style: const TextStyle(
                  color: Color(0xFF4A4A4A),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey,
                ),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // Navigate to the balance screen with the appropriate tab selected
                  switch (type) {
                    case CreditType.postUpdate:
                      initialTabIndex = 0;
                      break;
                    case CreditType.sendMessage:
                      initialTabIndex = 1;
                      break;
                    case CreditType.sendPicture:
                      initialTabIndex = 2;
                      break;
                    case CreditType.sendVoice:
                      initialTabIndex = 3;
                      break;
                  }
                  
                  Navigator.of(context).pushNamed(
                    '/balance',
                    arguments: {'initialTab': initialTabIndex}
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEE71F9),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Purchase Credits',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center,
            actionsPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          ),
        );
      }
      return false;
    }
    
    return true;
  }
  
  // Get an appropriate message based on credit type
  String _getCreditTypeMessage(CreditType type) {
    switch (type) {
      case CreditType.postUpdate:
        return 'You need credits to post an update. Would you like to purchase Post Updates credits?';
      case CreditType.sendMessage:
        return 'You need credits to send a message. Would you like to purchase Message credits?';
      case CreditType.sendPicture:
        return 'You need credits to send a picture. Would you like to purchase Picture credits?';
      case CreditType.sendVoice:
        return 'You need credits to send a voice message. Would you like to purchase Voice credits?';
    }
  }
  
  // Get the name of the credit type (for UI display)
  String getCreditTypeName(CreditType type) {
    switch (type) {
      case CreditType.postUpdate:
        return 'Post Updates';
      case CreditType.sendMessage:
        return 'Send a Message';
      case CreditType.sendPicture:
        return 'Send Pictures';
      case CreditType.sendVoice:
        return 'Send Voice';
    }
  }
  
  // Get the appropriate icon for the credit type
  IconData _getCreditTypeIcon(CreditType type) {
    switch (type) {
      case CreditType.postUpdate:
        return Icons.update;
      case CreditType.sendMessage:
        return Icons.message;
      case CreditType.sendPicture:
        return Icons.photo;
      case CreditType.sendVoice:
        return Icons.mic;
    }
  }
} 