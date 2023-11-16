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
  final onHoverEffect = Matrix4.identity()..scale(1.0);
  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];
  var hoveredIndex;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: size.width * 0.1,
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
              mainAxisExtent: 248.0, //280,
              mainAxisSpacing: 24.0,
              crossAxisSpacing: 24.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              var image = images[index];
              return FadeInUpBig(
                duration: const Duration(
                  microseconds: 1600,
                ),
                child: InkWell(
                  onTap: () {},
                  onHover: (bool value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      }
                    });
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        child: Image(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          duration: const Duration(
                            microseconds: 300,
                          ),
                          transform:
                              index == hoveredIndex ? onHoverEffect : null,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 16.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                            gradient: LinearGradient(
                              colors: <Color>[
                                AppColors.themeColor.withOpacity(
                                  1.0,
                                ),
                                AppColors.themeColor.withOpacity(
                                  0.9,
                                ),
                                AppColors.themeColor.withOpacity(
                                  0.8,
                                ),
                                AppColors.themeColor.withOpacity(
                                  0.6,
                                ),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'App Developer',
                                style: AppTextStyles.montserratStyle(
                                  color: Colors.black87,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'ipsum is a placeholder text commonly used to demonstrate the visual form of a documentgraphic design, Lorem ipsu',
                                style: AppTextStyles.normalStayle(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ); //20:06
            },
          )
        ],
      ),
    );
  }
}
