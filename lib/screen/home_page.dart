import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0.0,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Row(
            children: [
              Text(
                'Portfolio',
                style: AppTextStyles.headerTextStyle(),
              ),
              Spacer(),
              Text(
                'Home',
                style: AppTextStyles.headerTextStyle(),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'About',
                style: AppTextStyles.headerTextStyle(),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Services',
                style: AppTextStyles.headerTextStyle(),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Portfolio',
                style: AppTextStyles.headerTextStyle(),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Contact us',
                style: AppTextStyles.headerTextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
