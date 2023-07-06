import 'package:flutter/material.dart';

import '../shared/UI/blurred_container.dart';
import '../shared/UI/login_form.dart';

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
              height: MediaQuery.of(context).size.height * 0.65,
              bgColor: Colors.blue[100],
              child: const LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}
