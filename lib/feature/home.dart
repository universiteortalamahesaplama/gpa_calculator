import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    GanoDatabase.instance.open();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await GanoDatabase.instance.insert(
            <String, dynamic>{
              'lesson': 'Math',
              'credit': 3.0,
              'note': 4.0,
            },
          );
          // await ref.read(MyProviders.instance.ganoProvider).addGano(
          //       const Lesson(
          //         lesson: "Math",
          //         credit: 3.0,
          //         note: 4.0,
          //       ),
          //     );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Print"),
      ),
      body: Center(
        child: Text("Hello World", style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
