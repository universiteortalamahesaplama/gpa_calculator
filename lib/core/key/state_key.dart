import 'package:flutter/material.dart';

@immutable
class ProductKey {
  final GlobalKey<NavigatorState> globalKey = GlobalKey();
  static final ProductKey _instance = ProductKey._internal();

  ProductKey._internal();

  factory ProductKey() {
    return _instance;
  }

  final _key = ProductKey();
  ProductKey get key => _key;
}
