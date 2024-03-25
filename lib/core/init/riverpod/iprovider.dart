import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpa_calculator/product/notifiers/gano/gano_provider.dart';

abstract class BaseProvider {
  ProviderBase<GanoProvider> get ganoProvider;
}
