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
      home: const RegistrationFormScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegistrationFormScreen extends StatelessWidget {
  const RegistrationFormScreen({super.key});

  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color backgroundGray = Color(0xFFF9FAFB);
  static const Color secondaryGray = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGray,
      appBar: AppBar(
        title: const Text('Registro'),
        backgroundColor: primaryNavy,
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white, // Color de fondo del Container
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: secondaryGray.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Icon(Icons.person_add, size: 48, color: primaryNavy),
                SizedBox(height: 12),
                Text(
                  "Datos personales",
                  style:  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: primaryNavy,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Complete todos los campos requeridos",
                  style: TextStyle(fontSize: 14,color: secondaryGray),
                )
              ],
            )
        ),
      ),
    );
  }
}