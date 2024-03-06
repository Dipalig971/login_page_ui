import 'package:flutter/material.dart';
import 'package:login_page_ui/screen/loginscreen.dart';
import 'package:login_page_ui/screen/screen.dart';
import 'package:login_page_ui/screen/splashscreen.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => Splashscreen(),
        '/login':(context) => Loginscreen(),
        '/screen':(context) => Screen(),
      }
    );
  }
}
