import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.data,
  });

  final String data;

  int countCharacter() {
    return data.length * 2;
  }

  @override
  Widget build(BuildContext context) {
    // final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(data),
            ),
          ),
          Text('${countCharacter()}'),
        ],
      ),
    );
  }
}
