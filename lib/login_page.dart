// import 'dart:ui';

import 'package:flutter/material.dart';

import 'blurred_container.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.5, 1],
              ),
            ),
          ),
          Center(
            child: BlurredContainer(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              bgColor: Colors.blue[100],
              child: const LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}
