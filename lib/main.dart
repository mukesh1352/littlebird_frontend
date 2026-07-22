import 'package:flutter/material.dart';

import 'constants.dart';
import 'login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LittlebirdApp());
}

class LittlebirdApp extends StatelessWidget {
  const LittlebirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Littlebird",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,

        scaffoldBackgroundColor: AppColors.background,

        splashFactory: NoSplash.splashFactory,

        highlightColor: Colors.transparent,

        hoverColor: Colors.transparent,

        splashColor: Colors.transparent,

        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xff00D7D2),
          selectionColor: Color(0x3300D7D2),
          selectionHandleColor: Color(0xff00D7D2),
        ),
      ),

      home: const LoginScreen(),
    );
  }
}