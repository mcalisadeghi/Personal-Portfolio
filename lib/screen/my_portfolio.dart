import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_assets.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';
import 'package:flutter_application_1/globals/constants.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  List images = <String>[
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
    AppAssets.facebook,
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 12.0,
      ),
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(
              milliseconds: 1200,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Latest',
                style: AppTextStyles.headingStyles(
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(
                    text: 'Projects',
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
          GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 200,
            ),
            itemBuilder: (BuildContext context, int index) {
              var image = images[index];
              return Image(
                image: AssetImage(
                  image,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
