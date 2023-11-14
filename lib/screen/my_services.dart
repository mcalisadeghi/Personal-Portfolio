import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';

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
          FadeInRight(
            duration: const Duration(
              milliseconds: 1200,
            ),
            child: RichText(
              text: TextSpan(
                text: 'About',
                style: AppTextStyles.headingStyles(
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(
                    text: 'Me',
                    style: AppTextStyles.headingStyles(
                      fontSize: 30.0,
                      color: AppColors.rabinEdgeBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
