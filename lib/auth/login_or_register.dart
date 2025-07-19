import 'package:flutter/material.dart';
import 'package:resto_app/pages/login_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initiall show the login page
  bool showLoginPage = true;

  // toogle between login and register page

  void tooglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: tooglePages);
    } else {
      return LoginPage(onTap: tooglePages);
    }
  }
}
