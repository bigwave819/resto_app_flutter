import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

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

            //name textfield
            MyTextField(
              controller: nameController,
              hintText: "Your Name",
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
            MyButton(text: "Sign In", onTap: () {}),

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
