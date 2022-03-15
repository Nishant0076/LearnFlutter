import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Nishant";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter by $name"),
        ),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
              child: Text("Back"),
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              })
        ],
      )),
    );
  }
}
