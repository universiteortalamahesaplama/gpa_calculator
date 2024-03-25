import 'package:flutter/material.dart';

class OptionBottomSheet extends StatelessWidget {
  const OptionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: () {
      Navigator.pop(context);
    }, builder: (context) {
      return Container(
        child: Column(
          children: [
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    });
  }
}
