import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:welly/foundation/config/app_config.dart';

/// Purchase service for managing in-app purchases with RevenueCat
class PurchaseService {
  /// Constructor
  PurchaseService({required this.appConfig});

  /// App configuration
  final AppConfig appConfig;

  /// Customer info subject
  final BehaviorSubject<CustomerInfo?> _customerInfoSubject =
      BehaviorSubject<CustomerInfo?>();

  /// Customer info stream
  Stream<CustomerInfo?> get customerInfoStream => _customerInfoSubject.stream;

  /// Current customer info
  CustomerInfo? get currentCustomerInfo => _customerInfoSubject.value;

  /// Is premium subscriber
  bool get isPremium =>
      currentCustomerInfo?.entitlements.active['premium'] != null;

  /// Available packages subject
  final BehaviorSubject<List<Offering>> _offeringsSubject =
      BehaviorSubject<List<Offering>>();

  /// Available offerings stream
  Stream<List<Offering>> get offeringsStream => _offeringsSubject.stream;

  /// Current offerings
  List<Offering> get currentOfferings => _offeringsSubject.value;

  /// Initialize RevenueCat
  Future<void> initialize() async {
    try {
      // Enable debug logs
      await Purchases.setLogLevel(LogLevel.debug);

      // Configure RevenueCat with platform-specific API key
      PurchasesConfiguration configuration;

      if (Platform.isAndroid) {
        configuration = PurchasesConfiguration(
          appConfig.revenueCatGoogleApiKey,
        );
        debugPrint('PurchaseService: Using Google Play configuration');
      } else if (Platform.isIOS) {
        final String key = appConfig.revenueCatAppleApiKey;
        debugPrint('PurchaseService: Using Apple configuration: $key');
        configuration = PurchasesConfiguration(key);
        debugPrint('PurchaseService: Using Apple configuration');
      } else {
        throw UnsupportedError('Platform not supported for RevenueCat');
      }

      await Purchases.configure(configuration);

      // Set user ID if available (optional)
      // await Purchases.logIn(userId);

      // Get customer info
      await _loadCustomerInfo();

      // Get available offerings
      await _loadOfferings();

      debugPrint('PurchaseService: RevenueCat initialized successfully');
    } on Exception catch (e) {
      debugPrint('PurchaseService: Initialization error: $e');
      // Don't rethrow the error to prevent app crash
    }
  }

  /// Load customer info
  Future<void> _loadCustomerInfo() async {
    try {
      final CustomerInfo customerInfo = await Purchases.getCustomerInfo();
      _customerInfoSubject.add(customerInfo);
      debugPrint('PurchaseService: Customer info loaded');
    } on Exception catch (e) {
      debugPrint('PurchaseService: Error loading customer info: $e');
      _customerInfoSubject.add(null);
    }
  }

  /// Load available offerings
  Future<void> _loadOfferings() async {
    try {
      final Offerings offerings = await Purchases.getOfferings();
      final List<Offering> offeringsList = <Offering>[];

      if (offerings.current != null) {
        offeringsList.add(offerings.current!);
      }

      if (offerings.all.isNotEmpty) {
        offeringsList.addAll(offerings.all.values);
      }

      _offeringsSubject.add(offeringsList);
      debugPrint('PurchaseService: Offerings loaded: ${offeringsList.length}');
    } on Exception catch (e) {
      debugPrint('PurchaseService: Error loading offerings: $e');
      _offeringsSubject.add(<Offering>[]);
      // Don't rethrow the error to prevent app crash
    }
  }

  /// Purchase a package
  Future<bool> purchasePackage(Package package) async {
    try {
      final PurchaseResult purchaseResult = await Purchases.purchase(
        PurchaseParams.package(package),
      );
      _customerInfoSubject.add(purchaseResult.customerInfo);

      // Reload offerings after purchase
      await _loadOfferings();

      debugPrint('PurchaseService: Package purchased successfully');
      return true;
    } on Exception catch (e) {
      debugPrint('PurchaseService: Purchase error: $e');
      return false;
    }
  }

  /// Restore purchases
  Future<bool> restorePurchases() async {
    try {
      final CustomerInfo customerInfo = await Purchases.restorePurchases();
      _customerInfoSubject.add(customerInfo);
      debugPrint('PurchaseService: Purchases restored successfully');
      return true;
    } on Exception catch (e) {
      debugPrint('PurchaseService: Restore error: $e');
      return false;
    }
  }

  /// Get customer info
  Future<void> refreshCustomerInfo() async {
    await _loadCustomerInfo();
  }

  /// Get offerings
  Future<void> refreshOfferings() async {
    await _loadOfferings();
  }

  /// Log in user (for user identification)
  Future<void> logIn(String userId) async {
    try {
      final LogInResult logInResult = await Purchases.logIn(userId);
      _customerInfoSubject.add(logInResult.customerInfo);
      debugPrint('PurchaseService: User logged in: $userId');
    } on Exception catch (e) {
      debugPrint('PurchaseService: Login error: $e');
    }
  }

  /// Log out user
  Future<void> logOut() async {
    try {
      final CustomerInfo customerInfo = await Purchases.logOut();
      _customerInfoSubject.add(customerInfo);
      debugPrint('PurchaseService: User logged out');
    } on Exception catch (e) {
      debugPrint('PurchaseService: Logout error: $e');
    }
  }

  /// Dispose
  void dispose() {
    _customerInfoSubject.close();
    _offeringsSubject.close();
  }
}
