import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Row(
            children: [
              Text(
                'Portfolio',
              ),
              Spacer(),
              Text(
                'Home',
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'About',
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Services',
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Portfolio',
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Contact us',
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
