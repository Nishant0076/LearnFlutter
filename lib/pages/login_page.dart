// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // To fix the page overflow
        child: Column(
          children: [
            Image.asset(
              "img/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
