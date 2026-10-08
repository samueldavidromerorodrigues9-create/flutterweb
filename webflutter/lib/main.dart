import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'acerca_screen.dart';
import 'contacto_screen.dart';
import 'login_screen.dart';
import 'registro_screen.dart';

void main() {
  runApp(const SafeCheckApp());
}

class SafeCheckApp extends StatelessWidget {
  const SafeCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Check',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: const Color(0xFFF3F3F3),
        fontFamily: 'sans-serif',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/acerca': (context) => const AcercaScreen(),
        '/contacto': (context) => const ContactoScreen(),
        '/login': (context) => const LoginScreen(),
        '/registro': (context) => const RegistroScreen(),
      },
    );
  }
}
