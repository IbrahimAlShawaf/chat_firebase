import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'app_color.dart';
import 'app_text.dart';

class ScreenWidget extends StatelessWidget {
  final int index;
  const ScreenWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(80),
              ),
            ),
            child: Lottie.asset(
              'assets/images/$index.json',
              // width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text(titles[0]),
                      TextWidget(
                          text: titles[index],
                          color: AppColors.mainColor,
                          size: 32,
                          fontWeight: FontWeight.bold,
                          textalign: TextAlign.center),
                      Text(
                        about[index],
                        style: const TextStyle(
                          color: AppColors.textColor1,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
