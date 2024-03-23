import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpa_calculator/core/init/providers.dart';
import 'package:gpa_calculator/product/models/lesson_model.dart';
import 'package:gpa_calculator/product/notifiers/gano/gano_provider.dart';
import 'package:gpa_calculator/product/notifiers/gano_database.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final ganoProvider = ChangeNotifierProvider((ref) => GanoProvider());
  @override
  void initState() {
    super.initState();
    GanoDatabase.instance.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ref.read(MyProviders.instance.ganoProvider).addGano(
                const Lesson(
                  id: 1,
                  lesson: "Math",
                  credit: 3.0,
                  note: 4.0,
                ),
              );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(
        child: Text("Hello World", style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
