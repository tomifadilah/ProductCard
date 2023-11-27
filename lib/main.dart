import 'package:flutter/material.dart';
import 'package:flutter_application/pages/registration_page.dart';

void main() => runApp(FlutterApplication());

class FlutterApplication extends StatelessWidget {
  const FlutterApplication({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}
