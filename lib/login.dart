import 'package:flutter/material.dart';
import 'package:lorby/components/button.dart';
import 'package:lorby/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            //logox
            Icon(Icons.message, size: 50,),
            const SizedBox(height: 50),
            //  WelcomeBack
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),

            // email
            MyTextField(
              controller: emailController, 
              hintText: 'email', 
              obscureText: false
            ),
            const SizedBox(height: 15),

            // password
            MyTextField(
              controller: passwordController, 
              hintText: 'password', 
              obscureText: true
            ),
            const SizedBox(height: 20),
            
            // sub button
            Button(
              onTap: (){}, 
              text: 'Войти',
            ),

            // register now
            
          ],
        ),
      ),
    )));
  }
}
