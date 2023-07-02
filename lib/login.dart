import 'package:flutter/material.dart';
import './services/authentication.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _HomePageLeerState();
}

class _HomePageLeerState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inloggen'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'email'),
          ),
          TextFormField(
            controller: passwordController,
                        decoration: const InputDecoration(labelText: 'password'),
          ),
          ElevatedButton(
              onPressed: () {
                loginUser(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: const Text('login'))
        ],
      ),
    );
  }
}