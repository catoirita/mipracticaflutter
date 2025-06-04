import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Formulario de registro",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF1E3A8A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A),
          secondary: const Color(0xFF6B7280),
        ),
        useMaterial3: true,
      ),
      home: RegistrationFormScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class RegistrationFormScreen extends StatelessWidget{
  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color backgroundGray = Color (0xFFF9FAFB);
}