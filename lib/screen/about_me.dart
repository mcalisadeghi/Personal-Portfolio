import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';
import 'package:flutter_application_1/globals/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.bgColor2,
      child: Row(
        children: [
          Image.asset(
            AppAssets.prof2,
            height: 450.0,
            width: 400.0,
          ),
          Constants.sizedBox(
            width: 22.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: const Duration(
                    milliseconds: 1400,
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
                Constants.sizedBox(
                  height: 6.0,
                ),
                Text(
                  'Flutter Developer',
                  style: AppTextStyles.montserratStyle(
                    color: Colors.white,
                  ),
                ),
                Constants.sizedBox(
                  height: 8.0,
                ),
                Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum',
                  style: AppTextStyles.normalStayle(),
                ),
                Constants.sizedBox(
                  height: 15.0,
                ),
                MaterialButton(
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
