import 'package:flutter/material.dart';
import 'package:helo_ind/constants.dart';
import 'package:helo_ind/home_screen.dart';
import 'package:helo_ind/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(appName,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
          ),
          Center(
            child: Text(slogan),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Center(
              child: Container(
                height: 60,
                width: 150,
                color: Colors.red,
                child: Center(
                    child: Text(
                  loginString,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
