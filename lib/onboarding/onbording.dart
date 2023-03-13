import 'package:flutter/material.dart';

import '../views/widget/app_color.dart';
import '../views/widget/screen_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pageIndex = 0;

  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              itemCount: 3,
              controller: pageController,
              itemBuilder: ((context, index) {
                return ScreenWidget(
                  index: pageIndex,
                );
              })),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.20,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: pageIndex == index
                                ? AppColors.mainColor
                                : AppColors.textColor1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: size.width - 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.btnColor,
                      ),
                      onPressed: pageIndex == 2
                          ? () {
                              Navigator.of(context).pushNamed('MyMainScreen');
                            }
                          : () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeIn);
                            },
                      child: Text(
                        pageIndex == 2 ? 'Proceed' : 'Next',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (pageIndex != 2)
            Positioned(
              top: 50,
              left: 25,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.btnColor,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('MyMainScreen');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
