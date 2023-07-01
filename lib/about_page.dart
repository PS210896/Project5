import 'package:flutter/material.dart';

class about_page extends StatelessWidget {
  const about_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showAboutDialog(context: context,
          applicationIcon: const FlutterLogo(),
          applicationLegalese: "Application Legalise Information...",
          applicationName: "Flutter Mobile App",
          applicationVersion: "2.2"
          );
        },
        child: const Text('About'),
      ),
    );
  }
}