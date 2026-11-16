import 'package:flutter/material.dart';
import 'package:soal2_profil_app/screens/login_page.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, currentMode, child) {
        return MaterialApp(
          title: 'Aplikasi Profil',
          debugShowCheckedModeBanner: false,
          
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark, 
            ),
            useMaterial3: true,
          ),
          
          themeMode: currentMode,
          home: const LoginPage(), 
        );
      }
    );
  }
}