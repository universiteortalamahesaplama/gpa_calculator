import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpa_calculator/product/notifiers/gano/gano_provider.dart';

class MyProviders implements ParentProvider {
  //singleton
  static final MyProviders _instance = MyProviders._init();
  static MyProviders get instance => _instance;
  MyProviders._init();

  @override
  ProviderBase<GanoProvider> get ganoProvider => ChangeNotifierProvider((ref) => GanoProvider());
}

abstract class ParentProvider {
  ProviderBase<GanoProvider> get ganoProvider;
}
