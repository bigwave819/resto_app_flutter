import 'package:flutter/material.dart';
import 'package:resto_app/components/my_button.dart';
import 'package:resto_app/components/my_textfield.dart';

import 'home_page.dart' show HomePage;

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /* 
      fill out the authentication here ...
    */

    //navigate to the home page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 10),
            //message app slogan
            Text("Food delivery app", style: TextStyle(fontSize: 16)),

            // email textfield
            MyTextField(
              controller: emailController,
              hintText: "Your Email",
              obsecureText: false,
            ),

            const SizedBox(height: 10),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obsecureText: false,
            ),

            const SizedBox(height: 35),

            //sign in button
            MyButton(text: "Sign In", onTap: login),

            // not a member? register here now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
