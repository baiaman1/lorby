

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
            const SizedBox(height: 30),
            //logox
            Image.asset(
              'assets/login.png',
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(height: 20),

            // text welcome
            Text(
              'Вэлком бэк!', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),
            ),
            const SizedBox(height: 40),

            // email
            MyTextField(
              controller: emailController, 
              hintText: 'Введи логин', 
              obscureText: false
            ),
            const SizedBox(height: 13),

            // password
            MyTextField(
              controller: passwordController, 
              hintText: 'Введи пароль', 
              obscureText: true
            ),
            const SizedBox(height: 25),
            
            // sub button
            Button(
              onTap: (){}, 
              text: 'Войти',
            ),
            const SizedBox(height: 40),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Уменя еще нет аккаунта',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
    )));
  }
}
