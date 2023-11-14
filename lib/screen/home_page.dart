import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';
import 'package:flutter_application_1/globals/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';

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
          left: size.height * 0.1,
          right: size.height * 0.1,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(
                        milliseconds: 1200,
                      ),
                      child: Text(
                        'Hello, It\'s Me',
                        style: AppTextStyles.montserratStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    FadeInRight(
                      duration: const Duration(
                        milliseconds: 1400,
                      ),
                      child: Text(
                        'MC Ali S',
                        style: AppTextStyles.headingStyles(),
                      ),
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    FadeInLeft(
                      duration: const Duration(
                        milliseconds: 1400,
                      ),
                      child: Row(
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
                    ),
                    Constants.sizedBox(
                      height: 15.0,
                    ),
                    FadeInDown(
                      duration: const Duration(
                        milliseconds: 1600,
                      ),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
                          style: AppTextStyles.normalStayle(),
                        ),
                      ),
                    ),
                    Constants.sizedBox(
                      height: 22.0,
                    ),
                    FadeInUp(
                      duration: const Duration(
                        milliseconds: 1600,
                      ),
                      child: Row(
                        children: [
                          buildSocialbutton(
                            iconAssets: AppAssets.facebook,
                          ),
                          Constants.sizedBox(
                            width: 12.0,
                          ),
                          buildSocialbutton(
                            iconAssets: AppAssets.github,
                          ),
                          Constants.sizedBox(
                            width: 12.0,
                          ),
                          buildSocialbutton(
                            iconAssets: AppAssets.linkeddIn,
                          ),
                          Constants.sizedBox(
                            width: 12.0,
                          ),
                          buildSocialbutton(
                            iconAssets: AppAssets.instagram,
                          ),
                          Constants.sizedBox(
                            width: 12.0,
                          ),
                          buildSocialbutton(
                            iconAssets: AppAssets.twitter,
                          ),
                        ],
                      ),
                    ),
                    Constants.sizedBox(
                      height: 18.0,
                    ),
                    FadeInUp(
                      duration: const Duration(
                        milliseconds: 1800,
                      ),
                      child: buildMaterialButton(
                        onTap: () {},
                      ),
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

  MaterialButton buildMaterialButton({
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 10.0,
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        borderSide: BorderSide.none,
      ),
      hoverColor: AppColors.aqua,
      elevation: 6,
      height: 46.0,
      minWidth: 130.0,
      focusElevation: 12.0,
      child: Text(
        'Download CV',
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }

  Ink buildSocialbutton({
    required String iconAssets,
  }) {
    return Ink(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.themeColor,
          width: 2.0,
        ),
        color: AppColors.themeColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(
        6.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(
          500.0,
        ),
        radius: 50.0,
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        onTap: () {},
        child: Image.asset(
          iconAssets,
          width: 10.0, height: 12.0, color: AppColors.bgColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
