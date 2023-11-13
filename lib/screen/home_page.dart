import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';
import 'package:flutter_application_1/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        toolbarHeight: 90.0,
        titleSpacing: 100,
        backgroundColor: AppColors.bgColor,
        elevation: 2.0,
        title: Row(
          children: [
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            const Spacer(),
            Text(
              'Home',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              'About',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              'Services',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              'Contact us',
              style: AppTextStyles.headerTextStyle(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.3,
          left: size.height * 0.2,
          right: size.height * 0.2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, It\'s Me',
                      style: AppTextStyles.montserratStyle(),
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'MC Ali S',
                      style: AppTextStyles.headingStyles(),
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'And I\'am a Flutter Developer',
                      style: AppTextStyles.montserratStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
