import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpa_calculator/core/init/riverpod/iprovider.dart';
import 'package:gpa_calculator/product/notifiers/gano/gano_provider.dart';

class MyProviders implements BaseProvider {
  static final MyProviders _instance = MyProviders._init();
  static MyProviders get instance => _instance;
  MyProviders._init();

  @override
  ProviderBase<GanoProvider> get ganoProvider => ChangeNotifierProvider((ref) => GanoProvider());
}
