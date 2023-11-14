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
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 12.0,
      ),
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
            height: 60.0,
          ),
          Row(
            children: [
              buildAnimatedContainer(
                title: 'App Development',
                asset: AppAssets.github,
              ),
              Constants.sizedBox(
                width: 18.0,
              ),
              buildAnimatedContainer(
                title: 'Graphic Designing',
                asset: AppAssets.instagram,
              ),
              Constants.sizedBox(
                width: 18.0,
              ),
              buildAnimatedContainer(
                title: 'Digital Marketing',
                asset: AppAssets.facebook,
              ),
            ],
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
  }) {
    return AnimatedContainer(
      duration: const Duration(
        microseconds: 600,
      ),
      width: 400.0,
      height: 450.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(
              3.0,
              4.5,
            ),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50.0,
            height: 50.0,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(
            height: 30.0,
          ),
          Text(
            title,
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
            height: 20.0,
          ),
          AppButtons.buildMaterialButton(
            onTap: () {},
            buttonName: 'Read More',
          ),
        ],
      ),
    );
  }
}
