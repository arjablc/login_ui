import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Welcome",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Divider(
          height: 10,
          color: Colors.black,
          thickness: 2,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Username",
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: const TextStyle(
                color: Colors.purple, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: const TextStyle(
                color: Colors.purple, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "No account yet?",
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Make One",
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ))
          ],
        )
      ],
    );
  }
}
