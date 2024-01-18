import 'package:flutter/material.dart';

import 'components/button.dart';
import 'components/text_field.dart';

class Register extends StatelessWidget {
  // const Register({ Key? key }) : super(key: key);

  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {

  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
      backgroundColor: Colors.white,

      
      appBar: AppBar(
      
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Регистрация',
          style: TextStyle(
            backgroundColor: Colors.white,
            color: Colors.black54,
            fontWeight: FontWeight.bold
          ),
        ),
        
      ),
      
      body: SafeArea(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 30),

            // text welcome
            Text(
              'Создать аккаунт Lorby', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),
            ),
            const SizedBox(height: 40),

            // email
            MyTextField(
              controller: emailController, 
              hintText: 'Введи  адрес почты', 
              obscureText: false
            ),
            const SizedBox(height: 13),

            // login
            MyTextField(
              controller: loginController, 
              hintText: 'Придумай логин', 
              obscureText: false
            ),
            const SizedBox(height: 13),

            // password
            MyTextField(
              controller: passwordController, 
              hintText: 'Создай пароль', 
              obscureText: true
            ),
            const SizedBox(height: 25),

            // confirm password
            MyTextField(
              controller: confirmPasswordController, 
              hintText: 'Повтори пароль', 
              obscureText: true
            ),
            const SizedBox(height: 25),
            
            // sign up button
            Button(
              onTap: signUp, 
              text: 'Далее',
            ),
            const SizedBox(height: 40),
            
          ],
        ),
      ),
    )));
  }
}