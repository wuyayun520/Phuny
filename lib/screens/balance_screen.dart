import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import 'dart:io';

class BalanceScreen extends StatefulWidget {
  final int? initialTabIndex;
  
  const BalanceScreen({
    super.key,
    this.initialTabIndex,
  });

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  bool _isLoading = true;
  late int _selectedTabIndex;
  bool _purchasePending = false;
  bool _isApplePayAvailable = false;
  
  // IAP related variables
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  List<ProductDetails> _products = [];
  bool _isProductsLoaded = false;
  
  // User balance for each category
  int _postUpdateBalance = 0;
  int _sendMessageBalance = 0;
  int _sendPictureBalance = 0;
  int _sendVoiceBalance = 0;
  
  // Product data mapping - Maps our product IDs to their categories and quantities
  final Map<String, Map<String, dynamic>> _productMapping = {
    'Phuny1_5': {'category': 0, 'quantity': 5},
    'Phuny1_15': {'category': 0, 'quantity': 15},
    'Phuny1_19': {'category': 0, 'quantity': 19},
    'Phuny2_6': {'category': 1, 'quantity': 6},
    'Phuny2_19': {'category': 1, 'quantity': 19},
    'Phuny2_29': {'category': 1, 'quantity': 29},
    'Phuny3_8': {'category': 2, 'quantity': 8},
    'Phuny3_19': {'category': 2, 'quantity': 19},
    'Phuny3_39': {'category': 2, 'quantity': 39},
    'Phuny4_8': {'category': 3, 'quantity': 8},
    'Phuny4_19': {'category': 3, 'quantity': 19},
    'Phuny4_39': {'category': 3, 'quantity': 39},
  };
  
  // Product data for UI display
  final List<List<Map<String, dynamic>>> _productsDisplay = [
    // Post Updates products - Category 0
    [
      {'id': 'Phuny1_5', 'price': 5.99, 'quantity': 5},
      {'id': 'Phuny1_15', 'price': 15.99, 'quantity': 15},
      {'id': 'Phuny1_19', 'price': 19.99, 'quantity': 19},
    ],
    // Send Message products - Category 1
    [
      {'id': 'Phuny2_6', 'price': 6.99, 'quantity': 6},
      {'id': 'Phuny2_19', 'price': 19.99, 'quantity': 19},
      {'id': 'Phuny2_29', 'price': 29.99, 'quantity': 29},
    ],
    // Send Pictures products - Category 2
    [
      {'id': 'Phuny3_8', 'price': 8.99, 'quantity': 8},
      {'id': 'Phuny3_19', 'price': 19.99, 'quantity': 19},
      {'id': 'Phuny3_39', 'price': 39.99, 'quantity': 39},
    ],
    // Send Voice products - Category 3
    [
      {'id': 'Phuny4_8', 'price': 8.99, 'quantity': 8},
      {'id': 'Phuny4_19', 'price': 19.99, 'quantity': 19},
      {'id': 'Phuny4_39', 'price': 39.99, 'quantity': 39},
    ],
  ];

  // Category titles
  final List<String> _categoryTitles = [
    'Post Updates',
    'Send a Message',
    'Send Pictures',
    'Send Voice'
  ];

  // Category icons
  final List<IconData> _categoryIcons = [
    Icons.update,
    Icons.message,
    Icons.photo,
    Icons.mic
  ];

  // 添加一个集合来跟踪正在处理中的产品ID
  final Set<String> _pendingProductIds = <String>{};

  @override
  void initState() {
    super.initState();
    _selectedTabIndex = widget.initialTabIndex ?? 0;
    _loadBalances();
    
    if (Platform.isIOS) {
      _initializeIAP();
      
      // 使用WidgetsBinding确保在构建完成后再执行
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _cleanupPendingTransactions(null);
      });
    }
  }

  @override
  void dispose() {
    // 清理待处理的订单状态
    _purchasePending = false;
    _pendingProductIds.clear();
    
    if (Platform.isIOS) {
      debugPrint('正在清理待处理的订单状态');
    }
    
    _subscription?.cancel();
    super.dispose();
  }
  
  // 初始化苹果内购
  Future<void> _initializeIAP() async {
    try {
      // 1. 设置内购监听
      final Stream<List<PurchaseDetails>> purchaseUpdated = 
          _inAppPurchase.purchaseStream;
      
      _subscription = purchaseUpdated.listen(
        _onPurchaseUpdate,
        onDone: () {
          _subscription?.cancel();
        },
        onError: (error) {
          debugPrint('内购流错误: $error');
        }
      );
      
      // 2. 检查商店可用性
      final bool isAvailable = await _inAppPurchase.isAvailable();
      setState(() {
        _isApplePayAvailable = isAvailable;
      });
      
      if (!isAvailable) {
        debugPrint('设备无法进行内购');
        return;
      }
      
      // 3. 加载商品
      await _loadProducts();
    } catch (e) {
      debugPrint('初始化内购时发生错误: $e');
    }
  }
  
  // 加载产品信息
  Future<void> _loadProducts() async {
    try {
      final Set<String> productIds = _productMapping.keys.toSet();
      final ProductDetailsResponse response = 
          await _inAppPurchase.queryProductDetails(productIds);
      
      if (response.error != null) {
        debugPrint('查询产品时发生错误: ${response.error!.message}');
        setState(() {
          _isProductsLoaded = true;
        });
        return;
      }
      
      setState(() {
        _products = response.productDetails;
        _isProductsLoaded = true;
        debugPrint('成功加载 ${_products.length} 个商品');
        
        for (var product in _products) {
          debugPrint('产品: ${product.id} - ${product.price}');
        }
      });
    } catch (e) {
      debugPrint('加载产品时发生错误: $e');
      setState(() {
        _isProductsLoaded = true;
      });
    }
  }
  
  // 处理购买更新
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      debugPrint('购买状态: ${purchaseDetails.status}, 产品ID: ${purchaseDetails.productID}');
      final productId = purchaseDetails.productID;
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // 购买进行中
        setState(() {
          _purchasePending = true;
          // 确保添加到待处理集合
          _pendingProductIds.add(productId);
        });
      } else {
        // 对于非pending状态，无论成功与否都从待处理集合中移除
        if (purchaseDetails.status == PurchaseStatus.purchased || 
                  purchaseDetails.status == PurchaseStatus.restored) {
          // 购买成功或恢复购买
          await _deliverProduct(purchaseDetails);
          
          // 完成交易
          if (purchaseDetails.pendingCompletePurchase) {
            await _inAppPurchase.completePurchase(purchaseDetails);
          }
        } else if (purchaseDetails.status == PurchaseStatus.error) {
          // 购买出错
          _handlePurchaseError(purchaseDetails.error);
          
          // 重要：即使是错误状态，也需要完成交易以清理系统
          if (purchaseDetails.pendingCompletePurchase) {
            debugPrint('完成错误交易: ${purchaseDetails.productID}');
            await _inAppPurchase.completePurchase(purchaseDetails);
          }
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          // 用户取消
          _showMessage('Purchase canceled', Colors.orange);
          
          // 重要：对于取消的交易，也需要调用completePurchase来清理
          if (purchaseDetails.pendingCompletePurchase) {
            debugPrint('完成取消的交易: ${purchaseDetails.productID}');
            await _inAppPurchase.completePurchase(purchaseDetails);
          }
        }
        
        // 更新UI显示并从待处理集合中移除
        setState(() {
          _pendingProductIds.remove(productId);
          
          // 如果没有待处理的产品，则重置全局标志
          if (_pendingProductIds.isEmpty) {
            _purchasePending = false;
          }
        });
      }
    }
  }
  
  // 处理购买错误
  void _handlePurchaseError(IAPError? error) {
    if (error == null) {
      _showMessage('Purchase failed. Please try again later.', Colors.redAccent);
      return;
    }
    
    debugPrint('购买错误: ${error.code} - ${error.message}');
    String errorMessage = 'Purchase failed. Please try again later.';
    
    switch (error.code) {
      case 'purchase-error':
        errorMessage = 'Could not complete the purchase. Please try again.';
        break;
      case 'user-canceled':
        errorMessage = 'Purchase was canceled.';
        break;
      case 'not-implemented':
        errorMessage = 'This payment method is not available.';
        break;
      default:
        errorMessage = 'Purchase failed: ${error.message}';
    }
    
    _showMessage(errorMessage, Colors.redAccent);
  }
  
  // 交付产品
  Future<void> _deliverProduct(PurchaseDetails purchaseDetails) async {
    final productId = purchaseDetails.productID;
    final productInfo = _productMapping[productId];
    
    if (productInfo == null) {
      _showMessage('Product $productId not found in the app.', Colors.redAccent);
      return;
    }
    
    try {
      final category = productInfo['category'] as int;
      final quantity = productInfo['quantity'] as int;
      
      final prefs = await SharedPreferences.getInstance();
      
      switch (category) {
        case 0: // Post Updates
          final newBalance = _postUpdateBalance + quantity;
          await prefs.setInt('post_update_balance', newBalance);
          setState(() => _postUpdateBalance = newBalance);
          break;
        case 1: // Send Message
          final newBalance = _sendMessageBalance + quantity;
          await prefs.setInt('send_message_balance', newBalance);
          setState(() => _sendMessageBalance = newBalance);
          break;
        case 2: // Send Pictures
          final newBalance = _sendPictureBalance + quantity;
          await prefs.setInt('send_picture_balance', newBalance);
          setState(() => _sendPictureBalance = newBalance);
          break;
        case 3: // Send Voice
          final newBalance = _sendVoiceBalance + quantity;
          await prefs.setInt('send_voice_balance', newBalance);
          setState(() => _sendVoiceBalance = newBalance);
          break;
      }
      
      _showMessage('Successfully purchased $quantity ${_getCategoryLabel(category)}!', const Color(0xFFEE71F9));
    } catch (e) {
      debugPrint('处理购买时发生错误: $e');
      _showMessage('Error processing purchase: $e', Colors.redAccent);
    }
  }
  
  // 启动购买流程
  Future<void> _buyProduct(String productId) async {
    if (_purchasePending) {
      _showMessage('A transaction is already in progress. Please wait.', Colors.orange);
      return;
    }
    
    // 检查特定产品是否已有待处理交易
    if (_pendingProductIds.contains(productId)) {
      _showMessage('This item is already being processed. Please wait or restart the app if the issue persists.', Colors.orange);
      
      // 尝试获取并完成任何待处理的相同产品交易
      try {
        debugPrint('尝试清理可能的待处理交易: $productId');
        await _cleanupPendingTransactions(productId);
      } catch (e) {
        debugPrint('清理交易出错: $e');
      }
      return;
    }
    
    if (!_isApplePayAvailable) {
      _showMessage('App Store is currently unavailable. Please try again later.', Colors.redAccent);
      return;
    }
    
    // 查找产品
    final ProductDetails? productDetails = _findProductDetails(productId);
    if (productDetails == null) {
      debugPrint('找不到产品 $productId');
      _showMessage('Product not found in App Store. Please try again later.', Colors.redAccent);
      return;
    }
    
    debugPrint('开始购买: ${productDetails.id} - ${productDetails.price}');
    setState(() {
      _purchasePending = true;
      // 添加到待处理集合
      _pendingProductIds.add(productId);
    });
    
    // 创建购买参数
    final PurchaseParam purchaseParam = PurchaseParam(
      productDetails: productDetails,
      applicationUserName: null,
    );
    
    try {
      // 发起消耗型购买
      bool purchaseStarted = await _inAppPurchase.buyConsumable(
        purchaseParam: purchaseParam,
      );
      
      if (!purchaseStarted) {
        setState(() {
          _purchasePending = false;
          // 从待处理集合中移除
          _pendingProductIds.remove(productId);
        });
        _showMessage('Failed to start purchase process. Please try again.', Colors.redAccent);
      }
    } catch (e) {
      debugPrint('发起购买时出错: $e');
      
      // 更详细的错误处理
      String errorMessage;
      if (e.toString().contains('storekit_duplicate_product_object')) {
        errorMessage = 'There is a pending transaction for this item. Please wait a moment and try again.';
      } else {
        errorMessage = 'Error initiating purchase: $e';
      }
      
      setState(() {
        _purchasePending = false;
        // 从待处理集合中移除
        _pendingProductIds.remove(productId);
      });
      _showMessage(errorMessage, Colors.redAccent);
    }
  }
  
  // 查找产品详情
  ProductDetails? _findProductDetails(String productId) {
    try {
      return _products.firstWhere((product) => product.id == productId);
    } catch (e) {
      return null;
    }
  }

  // 显示消息
  void _showMessage(String message, Color backgroundColor) {
    if (!mounted) return;
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> _loadBalances() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _postUpdateBalance = prefs.getInt('post_update_balance') ?? 0;
        _sendMessageBalance = prefs.getInt('send_message_balance') ?? 0;
        _sendPictureBalance = prefs.getInt('send_picture_balance') ?? 0;
        _sendVoiceBalance = prefs.getInt('send_voice_balance') ?? 0;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading balances: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  String _getCategoryLabel(int index) {
    switch (index) {
      case 0: return 'Post Updates';
      case 1: return 'Messages';
      case 2: return 'Pictures';
      case 3: return 'Voice Messages';
      default: return 'Items';
    }
  }
  
  int _getCategoryBalance(int index) {
    switch (index) {
      case 0: return _postUpdateBalance;
      case 1: return _sendMessageBalance;
      case 2: return _sendPictureBalance;
      case 3: return _sendVoiceBalance;
      default: return 0;
    }
  }

  // 修改清理方法，避免在初始化时显示消息
  Future<void> _cleanupPendingTransactions(String? specificProductId) async {
    debugPrint('尝试清理可能的待处理交易');
    
    // 只有在明确请求时才显示消息（非初始化调用）
    if (specificProductId != null) {
      _showMessage('Attempting to clear pending transactions. Please try again in a moment.', Colors.blue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Purchase Credits',
          style: TextStyle(
            color: Color(0xFF4A4A4A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF4A4A4A),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFEE71F9)),
              ),
            )
          : Column(
              children: [
                // Category tabs
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final isSelected = _selectedTabIndex == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTabIndex = index;
                          });
                        },
                        child: Container(
                          width: 100,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            gradient: isSelected
                                ? const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFF5D0FE),
                                      Color(0xFFEE71F9),
                                    ],
                                  )
                                : null,
                            color: isSelected ? null : Colors.grey[100],
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: isSelected
                                ? [
                                    BoxShadow(
                                      color: const Color(0xFFEE71F9).withOpacity(0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                : null,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _categoryIcons[index],
                                color: isSelected ? Colors.white : const Color(0xFF4A4A4A),
                                size: 28,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _categoryTitles[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isSelected ? Colors.white : const Color(0xFF4A4A4A),
                                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${_getCategoryBalance(index)}',
                                style: TextStyle(
                                  color: isSelected 
                                      ? Colors.white 
                                      : const Color(0xFFEE71F9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                
                // Current balance card
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFF5D0FE),
                        Color(0xFFEE71F9),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEE71F9).withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        child: Icon(
                          _categoryIcons[_selectedTabIndex],
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _categoryTitles[_selectedTabIndex],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Current balance: ${_getCategoryBalance(_selectedTabIndex)}',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // IAP状态指示
                if (!Platform.isIOS)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.grey),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'In-app purchases are only available on iOS devices.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                
                // Purchase status message
                if (_purchasePending)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.amber),
                    ),
                    child: Row(
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.amber.shade800),
                          strokeWidth: 2,
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'Purchase in progress. Please wait...',
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                
                // Product list
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _productsDisplay[_selectedTabIndex].length,
                    itemBuilder: (context, index) {
                      final product = _productsDisplay[_selectedTabIndex][index];
                      final productId = product['id'];
                      final quantity = product['quantity'];
                      
                      // 获取价格 - 优先使用App Store的价格
                      String priceText = '\$${product['price'].toStringAsFixed(2)}';
                      ProductDetails? storeProduct = _findProductDetails(productId);
                      if (storeProduct != null) {
                        priceText = storeProduct.price;
                      }
                      
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          leading: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5D0FE).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              _categoryIcons[_selectedTabIndex],
                              color: const Color(0xFFEE71F9),
                            ),
                          ),
                          title: Text(
                            '$quantity ${_getCategoryLabel(_selectedTabIndex)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  Platform.isIOS && _isApplePayAvailable 
                                      ? 'App Store purchase' 
                                      : 'iOS only purchase',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          trailing: ElevatedButton(
                            onPressed: _purchasePending || !Platform.isIOS
                                ? null // Disable button during purchase or on non-iOS
                                : () => _isApplePayAvailable && _isProductsLoaded 
                                    ? _buyProduct(productId) 
                                    : _showMessage('App Store is currently unavailable. Please try again later.', Colors.redAccent),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEE71F9),
                              foregroundColor: Colors.white,
                              disabledBackgroundColor: Colors.grey.shade300,
                              disabledForegroundColor: Colors.grey.shade500,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            child: Text(
                              priceText,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
} 