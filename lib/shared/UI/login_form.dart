// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'text_button_custom.dart';

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
                color: Colors.black, fontWeight: FontWeight.bold),
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
                color: Colors.black, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purple, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            BackgroundContainer(
              bgColor: Colors.purple[100],
              child: Row(children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.apple,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ]),
            ),
            const Spacer(),
            TextButtonCustom(
              text: "Login",
              textSize: 20,
              bgColor: Colors.purple[100],
              function: null,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              flex: 3,
              child: Text("By logging in you accept our term of services"),
            ),
            Flexible(
              flex: 5,
              child: TextButtonCustom(
                function: null,
                text: "Register",
                textSize: 20,
                bgColor: Colors.purple[100],
              ),
            )
          ],
        )
      ],
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key? key,
    required this.child,
    required this.bgColor,
  }) : super(key: key);
  final Widget child;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 15, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor!.withOpacity(0.4)),
        child: child);
  }
}
