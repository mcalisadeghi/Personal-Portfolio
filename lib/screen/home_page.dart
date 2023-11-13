import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
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
                      style: AppTextStyles.montserratStyle(
                        color: Colors.white,
                      ),
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
                    Row(
                      children: [
                        Text(
                          'And I\'am a',
                          style: AppTextStyles.montserratStyle(
                            color: Colors.white,
                          ),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Developer',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'ّFreelancer',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'Gamer Dota2',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ], // totalRepeatCount: 4,
                          pause: const Duration(
                            milliseconds: 1000,
                          ),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
                        style: AppTextStyles.normalStayle(),
                      ),
                    ),
                    Constants.sizedBox(
                      height: 22.0,
                    ),
                    Row(
                      children: [
                        buildSocialbutton(
                          iconAssets: AppAssets.facebook,
                        ),
                        buildSocialbutton(
                          iconAssets: AppAssets.github,
                        ),
                        buildSocialbutton(
                          iconAssets: AppAssets.linkeddIn,
                        ),
                        buildSocialbutton(
                          iconAssets: AppAssets.instagram,
                        ),
                        buildSocialbutton(
                          iconAssets: AppAssets.twitter,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildSocialbutton({required String iconAssets}) {
    return CircleAvatar(
      maxRadius: 22.0,
      backgroundColor: AppColors.themeColor,
      child: Image.asset(
        iconAssets,
        width: 24.0,
        height: 20.0,
      ),
    );
  }
}
