import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import 'dart:io';

class VipScreen extends StatefulWidget {
  const VipScreen({super.key});

  @override
  State<VipScreen> createState() => _VipScreenState();
}

class _VipScreenState extends State<VipScreen> {
  bool _isVip = false;
  bool _isLoading = true;
  bool _purchasePending = false;
  DateTime? _vipExpiryDate;
  
  // IAP related variables
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  List<ProductDetails> _products = [];
  bool _isProductsLoaded = false;
  
  // 添加防止重复显示恢复消息的变量
  bool _hasShownRestoreMessage = false;
  DateTime? _lastRestoreMessageTime;
  
  // Selected subscription period (0: monthly, 1: quarterly, 2: yearly)
  int _selectedPeriod = 0;
  
  // Subscription product IDs
  final List<String> _subscriptionIds = [
    'loungeplus_50',    // Monthly - $19.99
    'SubNew2_29', // Quarterly - $29.99
    'SubNew3_69', // Yearly - $69.99
  ];
  
  // Subscription display data
  final List<Map<String, dynamic>> _subscriptionPlans = [
    {'period': 'Monthly', 'price': 19.99, 'id': 'loungeplus_50', 'save': ''},
    {'period': 'Quarterly', 'price': 29.99, 'id': 'SubNew2_29', 'save': 'Save 50%'},
    {'period': 'Yearly', 'price': 69.99, 'id': 'SubNew3_69', 'save': 'Save 70%'},
  ];

  // 添加一个变量来跟踪正在处理中的订阅ID
  String? _pendingSubscriptionId;

  @override
  void initState() {
    super.initState();
    _loadVipStatus();
    
    if (Platform.isIOS) {
      _initializeIAP();
      
      // 使用WidgetsBinding确保在构建完成后再执行
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _cleanupPendingTransactions();
      });
    }
  }
  
  @override
  void dispose() {
    // 清理待处理的订单状态
    _purchasePending = false;
    _hasShownRestoreMessage = false;
    _lastRestoreMessageTime = null;
    _pendingSubscriptionId = null;
    
    if (Platform.isIOS) {
      debugPrint('正在清理待处理的订单状态');
    }
    
    _subscription?.cancel();
    super.dispose();
  }
  
  // 初始化苹果内购
  Future<void> _initializeIAP() async {
    try {
      // 设置内购监听
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
      
      // 检查商店可用性
      final bool isAvailable = await _inAppPurchase.isAvailable();
      if (!isAvailable) {
        debugPrint('设备无法进行内购');
        setState(() {
          _isProductsLoaded = true;
        });
        return;
      }
      
      // 加载商品
      await _loadProducts();
    } catch (e) {
      debugPrint('初始化内购时发生错误: $e');
      setState(() {
        _isProductsLoaded = true;
      });
    }
  }

  // 加载产品信息
  Future<void> _loadProducts() async {
    try {
      final Set<String> productIds = _subscriptionIds.toSet();
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
    // 判断是否需要显示恢复消息
    bool shouldShowRestoreMessage = false;
    
    for (var purchaseDetails in purchaseDetailsList) {
      debugPrint('购买状态: ${purchaseDetails.status}, 产品ID: ${purchaseDetails.productID}');
      final productId = purchaseDetails.productID;
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // 购买进行中
        setState(() {
          _purchasePending = true;
          _pendingSubscriptionId = productId;
        });
      } else {
        // 对于非pending状态的处理
        if (purchaseDetails.status == PurchaseStatus.purchased || 
                  purchaseDetails.status == PurchaseStatus.restored) {
          // 购买成功或恢复购买
          bool wasRestoredPurchase = purchaseDetails.status == PurchaseStatus.restored;
          await _activateVip();
          
          // 检查是否是恢复购买，并且没有在近期显示过消息
          if (wasRestoredPurchase) {
            final now = DateTime.now();
            
            // 检查是否在3秒内已经显示过消息
            if (_lastRestoreMessageTime == null || 
                now.difference(_lastRestoreMessageTime!).inSeconds > 3) {
              shouldShowRestoreMessage = true;
              _lastRestoreMessageTime = now;
            }
          }
          
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
          _showMessage('Subscription canceled', Colors.orange);
          
          // 重要：对于取消的交易，也需要调用completePurchase来清理
          if (purchaseDetails.pendingCompletePurchase) {
            debugPrint('完成取消的交易: ${purchaseDetails.productID}');
            await _inAppPurchase.completePurchase(purchaseDetails);
          }
        }
        
        // 更新UI显示
        setState(() {
          _purchasePending = false;
          _pendingSubscriptionId = null;
        });
      }
    }
    
    // 只在一组恢复购买中显示一次成功消息
    if (shouldShowRestoreMessage && !_hasShownRestoreMessage) {
      _hasShownRestoreMessage = true;
      
      // 3秒后重置标志，允许再次显示消息
      Future.delayed(const Duration(seconds: 3), () {
        _hasShownRestoreMessage = false;
      });
      
      _showMessage('VIP subscription successfully restored!', const Color(0xFFEE71F9));
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
  
  // 启动订阅购买流程
  Future<void> _subscribe() async {
    if (_purchasePending) {
      _showMessage('A transaction is already in progress. Please wait.', Colors.orange);
      return;
    }

    if (!Platform.isIOS) {
      _showMessage('Subscriptions are only available on iOS devices.', Colors.redAccent);
      return;
    }
    
    final productId = _subscriptionIds[_selectedPeriod];
    
    // 检查是否已有相同的订阅正在处理
    if (_pendingSubscriptionId == productId) {
      _showMessage('This subscription is already being processed. Please wait.', Colors.orange);
      return;
    }
    
    // 查找产品
    final ProductDetails? productDetails = _findProductDetails(productId);
    if (productDetails == null) {
      debugPrint('找不到产品 $productId');
      _showMessage('Subscription not found in App Store. Please try again later.', Colors.redAccent);
      return;
    }
    
    debugPrint('开始订阅: ${productDetails.id} - ${productDetails.price}');
    setState(() {
      _purchasePending = true;
      _pendingSubscriptionId = productId;
    });
    
    // 创建购买参数
    final PurchaseParam purchaseParam = PurchaseParam(
      productDetails: productDetails,
      applicationUserName: null,
    );
    
    try {
      // 发起订阅购买
      bool purchaseStarted = await _inAppPurchase.buyNonConsumable(
        purchaseParam: purchaseParam,
      );
      
      if (!purchaseStarted) {
        setState(() {
          _purchasePending = false;
          _pendingSubscriptionId = null;
        });
        _showMessage('Failed to start subscription process. Please try again.', Colors.redAccent);
      }
    } catch (e) {
      debugPrint('发起订阅时出错: $e');
      
      // 更详细的错误处理
      String errorMessage;
      if (e.toString().contains('storekit_duplicate_product_object')) {
        errorMessage = 'There is a pending subscription transaction. Please wait a moment and try again.';
      } else {
        errorMessage = 'Error initiating subscription: $e';
      }
      
      setState(() {
        _purchasePending = false;
        _pendingSubscriptionId = null;
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

  Future<void> _loadVipStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _isVip = prefs.getBool('user_is_vip') ?? false;
        // 从SharedPreferences读取到期日期（以毫秒时间戳的形式存储）
        final expiryTimestamp = prefs.getInt('user_vip_expiry_date');
        _vipExpiryDate = expiryTimestamp != null 
            ? DateTime.fromMillisecondsSinceEpoch(expiryTimestamp)
            : null;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading VIP status: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _activateVip() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      // 检查用户是否已经是VIP，避免重复设置
      final wasVipBefore = prefs.getBool('user_is_vip') ?? false;
      
      await prefs.setBool('user_is_vip', true);
      
      // 根据选择的订阅期设置VIP到期日期，若是恢复购买则尝试恢复原有到期日期
      final DateTime now = DateTime.now();
      DateTime expiryDate;
      
      // 检查是否已有到期日期（恢复购买的情况）
      final existingExpiryTimestamp = prefs.getInt('user_vip_expiry_date');
      if (existingExpiryTimestamp != null) {
        final existingExpiryDate = DateTime.fromMillisecondsSinceEpoch(existingExpiryTimestamp);
        // 如果现有到期日期在未来，则保留
        if (existingExpiryDate.isAfter(now)) {
          expiryDate = existingExpiryDate;
          debugPrint('恢复现有到期日期: ${expiryDate.toString()}');
        } else {
          // 否则按新订阅设置
          expiryDate = _calculateExpiryDate(now);
          debugPrint('现有到期日期已过期，设置新到期日期: ${expiryDate.toString()}');
        }
      } else {
        // 新订阅，设置新到期日期
        expiryDate = _calculateExpiryDate(now);
        debugPrint('设置新到期日期: ${expiryDate.toString()}');
      }
      
      await prefs.setInt('user_vip_expiry_date', expiryDate.millisecondsSinceEpoch);
      
      setState(() {
        _isVip = true;
        _vipExpiryDate = expiryDate;
        _isLoading = false;
      });

      // 仅在首次激活时显示祝贺消息，恢复购买在调用方处理
      if (!wasVipBefore) {
        _showMessage('Congratulations! You are now a VIP member!', const Color(0xFFEE71F9));
      }
    } catch (e) {
      debugPrint('Error activating VIP: $e');
      setState(() {
        _isLoading = false;
      });
      
      _showMessage('Error: $e', Colors.redAccent);
    }
  }
  
  // 计算到期日期
  DateTime _calculateExpiryDate(DateTime startDate) {
    switch (_selectedPeriod) {
      case 0: // 月度
        return DateTime(startDate.year, startDate.month + 1, startDate.day);
      case 1: // 季度
        return DateTime(startDate.year, startDate.month + 3, startDate.day);
      case 2: // 年度
        return DateTime(startDate.year + 1, startDate.month, startDate.day);
      default:
        return DateTime(startDate.year + 1, startDate.month, startDate.day);
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
          'VIP Membership',
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
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // VIP Status Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: _isVip
                              ? [
                                  Colors.amber.shade300,
                                  Colors.amber.shade700,
                                ]
                              : [
                                  const Color(0xFFF5D0FE),
                                  const Color(0xFFEE71F9),
                                ],
                        ),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: _isVip
                                ? Colors.amber.withOpacity(0.3)
                                : const Color(0xFFEE71F9).withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.workspace_premium,
                                color: Colors.white,
                                size: 30,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              Text(
                                _isVip ? 'VIP Member' : 'Standard Member',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Text(
                            _isVip
                                ? 'You have exclusive access to premium features'
                                : 'Upgrade to unlock exclusive features',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 14,
                            ),
                          ),
                          if (_isVip && _vipExpiryDate != null) ...[
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.event_available,
                                color: Colors.white,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Valid until: ${_formatDate(_vipExpiryDate!)}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 30),
                    
                    // Benefits section
                    const Text(
                      'VIP Benefits',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4A4A4A),
                      ),
                    ),
                    
                    const SizedBox(height: 15),
                    
                    _buildBenefitsList(),
                    
                    const SizedBox(height: 30),
                    
                    // Subscription plans section
                    if (!_isVip) ...[
                      const Text(
                        'Choose Your Plan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4A4A4A),
                        ),
                      ),
                      
                      const SizedBox(height: 15),
                      
                      // Subscription cards
                      SizedBox(
                        height: 260,
                        child: PageView.builder(
                          controller: PageController(
                            viewportFraction: 0.85,
                            initialPage: _selectedPeriod,
                          ),
                          onPageChanged: (index) {
                            setState(() {
                              _selectedPeriod = index;
                            });
                          },
                          itemCount: _subscriptionPlans.length,
                          itemBuilder: (context, index) {
                            bool isSelected = index == _selectedPeriod;
                            
                            // 不同档位使用不同的颜色
                            Color cardColor;
                            List<Color> gradientColors;
                            
                            switch (index) {
                              case 0: // 月度
                                cardColor = const Color(0xFFF5D0FE);
                                gradientColors = [
                                  const Color(0xFFF5D0FE),
                                  const Color(0xFFEE71F9),
                                ];
                                break;
                              case 1: // 季度
                                cardColor = const Color(0xFF90CAF9);
                                gradientColors = [
                                  const Color(0xFF90CAF9),
                                  const Color(0xFF1976D2),
                                ];
                                break;
                              case 2: // 年度
                                cardColor = const Color(0xFFFFF59D);
                                gradientColors = [
                                  const Color(0xFFFFF59D),
                                  const Color(0xFFFBC02D),
                                ];
                                break;
                              default:
                                cardColor = const Color(0xFFF5D0FE);
                                gradientColors = [
                                  const Color(0xFFF5D0FE),
                                  const Color(0xFFEE71F9),
                                ];
                            }
                            
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOutQuint,
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: isSelected ? 15 : 30,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: gradientColors,
                                ),
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: cardColor.withOpacity(0.5),
                                    blurRadius: isSelected ? 15 : 8,
                                    offset: const Offset(0, 5),
                                    spreadRadius: isSelected ? 1 : 0,
                                  ),
                                ],
                                border: isSelected 
                                    ? Border.all(color: Colors.white, width: 3)
                                    : null,
                              ),
                              child: Stack(
                                children: [
                                  // 背景装饰
                                  if (isSelected)
                                    Positioned(
                                      right: -15,
                                      top: -15,
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.15),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  
                                  // 装饰小圆圈
                                  Positioned(
                                    left: -5,
                                    bottom: -5,
                                    child: Container(
                                      width: isSelected ? 60 : 40,
                                      height: isSelected ? 60 : 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.1),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _subscriptionPlans[index]['period'],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: isSelected ? 22 : 18,
                                                fontWeight: FontWeight.bold,
                                                shadows: const [
                                                  Shadow(
                                                    color: Colors.black26,
                                                    blurRadius: 2,
                                                    offset: Offset(0, 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (_subscriptionPlans[index]['save'].isNotEmpty)
                                              Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 4,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.3),
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                child: Text(
                                                  _subscriptionPlans[index]['save'],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black26,
                                                        blurRadius: 2,
                                                        offset: Offset(0, 1),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        
                                        const SizedBox(height: 10),
                                        
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '\$',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: isSelected ? 18 : 16,
                                                fontWeight: FontWeight.bold,
                                                height: 2.5,
                                              ),
                                            ),
                                            Text(
                                              _subscriptionPlans[index]['price'].toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: isSelected ? 34 : 28,
                                                fontWeight: FontWeight.bold,
                                                shadows: const [
                                                  Shadow(
                                                    color: Colors.black26,
                                                    blurRadius: 2,
                                                    offset: Offset(0, 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        
                                        Text(
                                          index == 0 
                                              ? 'per month' 
                                              : index == 1 
                                                  ? 'per quarter' 
                                                  : 'per year',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.9),
                                            fontSize: isSelected ? 14 : 12,
                                          ),
                                        ),
                                        
                                        const SizedBox(height: 8),
                                        
                                        if (isSelected)
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(14),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.check_circle,
                                                  color: gradientColors[1],
                                                  size: 16,
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'SELECTED',
                                                  style: TextStyle(
                                                    color: gradientColors[1],
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      
                      // Page indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _subscriptionPlans.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: _selectedPeriod == index ? 18 : 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: _selectedPeriod == index
                                  ? _selectedPeriod == 0
                                      ? const Color(0xFFEE71F9)
                                      : _selectedPeriod == 1
                                          ? const Color(0xFF1976D2)
                                          : const Color(0xFFFBC02D)
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                    ),
                    
                    const SizedBox(height: 30),
                    
                      // Subscribe button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _purchasePending || !Platform.isIOS
                              ? null
                              : _subscribe,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: _selectedPeriod == 0
                                ? const Color(0xFFEE71F9)
                                : _selectedPeriod == 1
                                    ? const Color(0xFF1976D2)
                                    : const Color(0xFFFBC02D),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: 2,
                            shadowColor: _selectedPeriod == 0
                                ? const Color(0xFFEE71F9).withOpacity(0.4)
                                : _selectedPeriod == 1
                                    ? const Color(0xFF1976D2).withOpacity(0.4)
                                    : const Color(0xFFFBC02D).withOpacity(0.4),
                            disabledBackgroundColor: Colors.grey.shade300,
                            disabledForegroundColor: Colors.grey.shade500,
                          ),
                          child: _purchasePending
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                    strokeWidth: 2,
                                  ),
                                )
                              : Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Subscribe Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                    ),
                                  ],
                                ),
                        ),
                      ),
                      
                      // 在这里添加恢复购买按钮
                      if (!_isVip && Platform.isIOS) ...[
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton.icon(
                            onPressed: _purchasePending ? null : _restorePurchases,
                            icon: const Icon(
                              Icons.restore,
                              size: 16,
                            ),
                            label: const Text(
                              'Restore Purchases',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFFEE71F9),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              disabledForegroundColor: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ],
                      
                      const SizedBox(height: 20),
                      
                      // Platform notice
                      if (!Platform.isIOS)
                        Container(
                          padding: const EdgeInsets.all(12),
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
                                  'Subscriptions are only available on iOS devices.',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                      const SizedBox(height: 30),
                      
                      // Subscription terms and conditions
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Subscription Information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF4A4A4A),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '• Payment will be charged to your Apple ID account at the confirmation of purchase.\n'
                              '• Subscription automatically renews unless it is canceled at least 24 hours before the end of the current period.\n'
                              '• Your account will be charged for renewal within 24 hours prior to the end of the current period.\n'
                              '• You can manage and cancel your subscriptions by going to your account settings on the App Store.\n'
                              '• Any unused portion of a free trial period will be forfeited when purchasing a subscription.',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Legal Agreements',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF4A4A4A),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'By subscribing, you agree to our:',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                _showEulaDialog(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.description_outlined,
                                    size: 16,
                                    color: const Color(0xFFEE71F9),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'End User License Agreement (EULA)',
                                    style: TextStyle(
                                      color: const Color(0xFFEE71F9),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                _showPrivacyPolicyDialog(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.privacy_tip_outlined,
                                    size: 16,
                                    color: const Color(0xFFEE71F9),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      color: const Color(0xFFEE71F9),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                _showTermsOfServiceDialog(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.gavel_outlined,
                                    size: 16,
                                    color: const Color(0xFFEE71F9),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Terms of Service',
                                    style: TextStyle(
                                      color: const Color(0xFFEE71F9),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ] else
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.amber.shade50,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.amber,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.check_circle,
                              color: Colors.amber,
                              size: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'You are a VIP Member',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Thank you for your support!',
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
    );
  }

  // 获取价格显示
  String _getDisplayPrice() {
    final productId = _subscriptionIds[_selectedPeriod];
    final ProductDetails? product = _findProductDetails(productId);
    
    if (product != null) {
      return product.price;
    }
    
    // 回退到硬编码价格
    return '\$${_subscriptionPlans[_selectedPeriod]['price']}';
  }
  
  // 获取周期标签
  String _getPeriodLabel() {
    switch (_selectedPeriod) {
      case 0:
        return 'per month';
      case 1:
        return 'per quarter';
      case 2:
        return 'per year';
      default:
        return '';
    }
  }
  
  // 显示EULA对话框
  void _showEulaDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('End User License Agreement'),
          content: SingleChildScrollView(
            child: Text(
              'END USER LICENSE AGREEMENT\n\n'
              'Last Updated: ${DateTime.now().toString().substring(0, 10)}\n\n'
              'Please read this End User License Agreement ("Agreement") carefully before using our application. This Agreement constitutes a legally binding agreement between you and our company.\n\n'
              '1. LICENSE GRANT\n'
              'We grant you a limited, non-exclusive, non-transferable, revocable license to use our application for personal, non-commercial purposes.\n\n'
              '2. RESTRICTIONS\n'
              'You agree not to, and will not permit others to:\n'
              '• License, sell, rent, lease, assign, distribute, transmit, host, outsource, disclose or otherwise commercially exploit the application.\n'
              '• Modify, make derivative works of, disassemble, decrypt, reverse compile or reverse engineer any part of the application.\n'
              '• Remove, alter or obscure any proprietary notice of the application.\n\n'
              '3. SUBSCRIPTIONS\n'
              'Some features of the application require a subscription. Subscriptions automatically renew unless auto-renew is turned off at least 24 hours before the end of the current period. Your account will be charged for renewal within 24 hours prior to the end of the current period. You can manage and cancel your subscriptions by going to your account settings on the App Store after purchase.\n\n'
              '4. USER CONTENT\n'
              'You are responsible for any content you create, upload, post, send, or store through the Application.\n\n'
              '5. THIRD-PARTY SERVICES\n'
              'The application may display, include, or make available third-party content or provide links to third-party websites or services.\n\n'
              '6. TERMINATION\n'
              'This Agreement is effective until terminated by you or us. Your rights under this Agreement will terminate automatically if you fail to comply with any terms.\n\n'
              '7. DISCLAIMER OF WARRANTY\n'
              'THE APPLICATION IS PROVIDED "AS IS" AND "AS AVAILABLE" WITHOUT WARRANTIES OF ANY KIND.\n\n'
              '8. LIMITATION OF LIABILITY\n'
              'TO THE MAXIMUM EXTENT PERMITTED BY LAW, IN NO EVENT SHALL WE BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT, OR CONSEQUENTIAL DAMAGES.\n\n'
              '9. GOVERNING LAW\n'
              'This Agreement shall be governed by and construed in accordance with the laws of the jurisdiction in which we operate.\n\n'
              '10. CHANGES TO THIS AGREEMENT\n'
              'We reserve the right to modify this Agreement at any time. We will notify you of any changes by posting the new Agreement on the App Store and updating the "Last Updated" date.\n\n'
              'BY USING THE APPLICATION, YOU ACKNOWLEDGE THAT YOU HAVE READ THIS AGREEMENT, UNDERSTAND IT, AND AGREE TO BE BOUND BY ITS TERMS AND CONDITIONS.',
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
  
  // 显示隐私政策对话框
  void _showPrivacyPolicyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Privacy Policy'),
          content: SingleChildScrollView(
            child: Text(
              'PRIVACY POLICY\n\n'
              'Last Updated: ${DateTime.now().toString().substring(0, 10)}\n\n'
              'This Privacy Policy describes how we collect, use, and share your personal information when you use our application.\n\n'
              '1. INFORMATION WE COLLECT\n\n'
              'We may collect the following types of information:\n'
              '• Account Information: When you register, we collect information such as your name, email address, and profile picture.\n'
              '• Usage Data: We collect information about how you interact with our application, including features you use and time spent on the app.\n'
              '• Device Information: We collect information about your device, including device model, operating system, and unique device identifiers.\n'
              '• Payment Information: If you make purchases, we collect payment information, which is processed by Apple\'s App Store.\n\n'
              '2. HOW WE USE YOUR INFORMATION\n\n'
              'We use your information to:\n'
              '• Provide, maintain, and improve our services\n'
              '• Process transactions and send related information\n'
              '• Send you technical notices, updates, and support messages\n'
              '• Respond to your comments and questions\n'
              '• Develop new products and services\n'
              '• Monitor and analyze trends and usage\n'
              '• Detect, investigate, and prevent fraudulent transactions and other illegal activities\n\n'
              '3. SHARING YOUR INFORMATION\n\n'
              'We may share your information with:\n'
              '• Service providers who perform services on our behalf\n'
              '• Partners with whom we offer co-branded services or products\n'
              '• Law enforcement or other third parties if required by law\n\n'
              '4. DATA RETENTION\n\n'
              'We retain your information for as long as your account is active or as needed to provide you services. We may retain and use your information as necessary to comply with legal obligations, resolve disputes, and enforce our agreements.\n\n'
              '5. YOUR RIGHTS\n\n'
              'Depending on your location, you may have the right to:\n'
              '• Access the personal information we hold about you\n'
              '• Request that we correct or update your personal information\n'
              '• Request that we delete your personal information\n'
              '• Object to processing of your personal information\n'
              '• Request restriction of processing your personal information\n'
              '• Request transfer of your personal information\n\n'
              '6. CHILDREN\'S PRIVACY\n\n'
              'Our services are not intended for children under the age of 13. We do not knowingly collect personal information from children under 13.\n\n'
              '7. CHANGES TO THIS POLICY\n\n'
              'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last Updated" date.\n\n'
              '8. CONTACT US\n\n'
              'If you have any questions about this Privacy Policy, please contact us.',
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
  
  // 显示服务条款对话框
  void _showTermsOfServiceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Terms of Service'),
          content: SingleChildScrollView(
            child: Text(
              'TERMS OF SERVICE\n\n'
              'Last Updated: ${DateTime.now().toString().substring(0, 10)}\n\n'
              'These Terms of Service ("Terms") govern your access to and use of our application. Please read these Terms carefully before using our application.\n\n'
              '1. ACCEPTANCE OF TERMS\n\n'
              'By accessing or using our application, you agree to be bound by these Terms. If you do not agree to these Terms, do not use our application.\n\n'
              '2. CHANGES TO TERMS\n\n'
              'We may update these Terms from time to time. If we make changes, we will notify you by revising the "Last Updated" date at the top of these Terms and, in some cases, we may provide additional notice. Your continued use of our application after the changes are made will constitute your acceptance of the changes.\n\n'
              '3. USING OUR APPLICATION\n\n'
              'You may use our application only for lawful purposes and in accordance with these Terms. You agree not to use our application:\n'
              '• In any way that violates any applicable law or regulation\n'
              '• To transmit any material that is defamatory, obscene, or offensive\n'
              '• To impersonate or attempt to impersonate any person or entity\n'
              '• To engage in any conduct that restricts or inhibits anyone\'s use of the application\n'
              '• To attempt to gain unauthorized access to any portion of the application\n\n'
              '4. USER ACCOUNTS\n\n'
              'When you create an account with us, you must provide accurate, complete, and up-to-date information. You are responsible for safeguarding your account and for all activities that occur under your account.\n\n'
              '5. SUBSCRIPTIONS AND PAYMENTS\n\n'
              'Some features of our application require a subscription payment. By subscribing, you agree to the payment terms as presented to you at the time of purchase. Subscriptions automatically renew unless auto-renew is turned off at least 24 hours before the end of the current period. You can manage and cancel your subscriptions by going to your account settings in the App Store.\n\n'
              '6. INTELLECTUAL PROPERTY RIGHTS\n\n'
              'Our application and its contents, features, and functionality are owned by us and are protected by international copyright, trademark, patent, trade secret, and other intellectual property laws.\n\n'
              '7. TERMINATION\n\n'
              'We may terminate or suspend your account and bar access to our application immediately, without prior notice or liability, for any breach of these Terms.\n\n'
              '8. DISCLAIMER OF WARRANTIES\n\n'
              'Our application is provided on an "AS IS" and "AS AVAILABLE" basis. We disclaim all warranties, express or implied, including implied warranties of merchantability, fitness for a particular purpose, and non-infringement.\n\n'
              '9. LIMITATION OF LIABILITY\n\n'
              'In no event will we be liable for damages of any kind arising from your use of our application, including direct, indirect, special, incidental, and consequential damages.\n\n'
              '10. GOVERNING LAW\n\n'
              'These Terms shall be governed by and construed in accordance with the laws of the jurisdiction in which we operate, without regard to its conflict of law provisions.\n\n'
              '11. CONTACT INFORMATION\n\n'
              'For any questions about these Terms, please contact us.',
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBenefitItem({
    required String title,
    required String description,
    required IconData icon,
    required bool isLast,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _isVip
                  ? Colors.amber.withOpacity(0.2)
                  : const Color(0xFFF5D0FE).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              icon,
              color: _isVip ? Colors.amber : const Color(0xFFEE71F9),
              size: 28,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: _isVip ? FontWeight.bold : FontWeight.w600,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ),
        if (!isLast)
          const Padding(
            padding: EdgeInsets.only(left: 80, right: 20),
            child: Divider(height: 1),
          ),
      ],
    );
  }

  Widget _buildBenefitsList() {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildBenefitItem(
            title: "Unlimited Card Sliding",
            description: "Non-VIP users limited to 1 free swipe per day",
            icon: Icons.swap_horiz,
            isLast: false,
          ),
          _buildBenefitItem(
            title: "Unlimited Avatar Changes",
            description: "Change your profile picture as often as you want",
            icon: Icons.face,
            isLast: false,
          ),
          _buildBenefitItem(
            title: "Ad-Free Experience",
            description: "Enjoy the app without any advertisements",
            icon: Icons.block,
            isLast: true,
          ),
        ],
      ),
    );
  }

  // 格式化日期方法
  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  // 恢复购买功能
  Future<void> _restorePurchases() async {
    if (!Platform.isIOS) {
      _showMessage('Restore purchases is only available on iOS devices.', Colors.redAccent);
      return;
    }
    
    if (_purchasePending) {
      _showMessage('A transaction is already in progress. Please wait.', Colors.orange);
      return;
    }
    
    setState(() {
      _purchasePending = true;
      _hasShownRestoreMessage = false; // 重置恢复消息显示标志
      _lastRestoreMessageTime = null;  // 重置最后一次显示时间
    });
    
    try {
      _showMessage('Restoring purchases...', Colors.blue);
      await _inAppPurchase.restorePurchases();
      
      // _inAppPurchase.purchaseStream 会在购买恢复后触发，
      // 在 _onPurchaseUpdate 中会处理恢复的购买
      debugPrint('Restore purchases initiated');
    } catch (e) {
      debugPrint('Error restoring purchases: $e');
      _showMessage('Failed to restore purchases: $e', Colors.redAccent);
      setState(() {
        _purchasePending = false;
      });
    }
  }

  // 修改清理方法，避免显示消息
  Future<void> _cleanupPendingTransactions() async {
    debugPrint('尝试清理任何可能的待处理订阅交易');
  }
} 