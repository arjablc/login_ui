import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            displayMedium: TextStyle(
                fontFamily: 'Pacifico', fontSize: 70, color: Colors.black)),
      ),
      home: const LoginPage(),
    );
  }
}
