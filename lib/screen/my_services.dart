import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_button.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';
import 'package:flutter_application_1/globals/constants.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(
              milliseconds: 1200,
            ),
            child: RichText(
              text: TextSpan(
                text: 'My',
                style: AppTextStyles.headingStyles(
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(
                    text: 'Services',
                    style: AppTextStyles.headingStyles(
                      fontSize: 30.0,
                      color: AppColors.rabinEdgeBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(
            height: 40.0,
          ),
          AnimatedContainer(
            duration: Duration(
              microseconds: 600,
            ),
            width: 450.0,
            child: Column(
              children: [
                Image.asset(
                  AppAssets.github,
                  width: 50.0,
                  height: 50.0,
                  color: AppColors.themeColor,
                ),
                Constants.sizedBox(
                  height: 30.0,
                ),
                Text(
                  'App Development',
                  style: AppTextStyles.montserratStyle(
                    color: Colors.white,
                  ),
                ),
                Constants.sizedBox(
                  height: 12.0,
                ),
                Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
                  style: AppTextStyles.normalStayle(),
                ),
                Constants.sizedBox(
                  height: 12.0,
                ),
                AppButtons.buildMaterialButton(
                  onTap: () {},
                  buttonName: 'Read More',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
