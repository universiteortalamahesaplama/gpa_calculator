import 'package:flutter/material.dart';
import 'package:gpa_calculator/core/init/navigation/inavigation_service.dart';
import 'package:gpa_calculator/core/key/state_key.dart';

class NavigationService implements INavigationService {
  NavigationService._init();
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  final ProductKey navigatorKey = ProductKey().key;

  bool removeAllOldRoutes(Route<dynamic> route) {
    return false;
  }

  @override
  Future<void> navigateToPage({String? path, Object? data}) async {
    await navigatorKey.globalKey.currentState!.popAndPushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    await navigatorKey.globalKey.currentState!.pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: data);
  }

  @override
  void closeWithResult({Object? data}) {
    navigatorKey.globalKey.currentState!.pop(data);
  }
}
