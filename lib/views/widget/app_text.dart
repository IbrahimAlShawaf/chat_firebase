import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textalign;
  double size;
  TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.size,
      required this.fontWeight,
      required this.textalign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

const titles = [
  'Fast Messaging',
  'Secure System',
  'Enjoy Your Date',
];

const about = [
  'Chat app fast messaging and powerful than any other application',
  'Chat app secure system from hacker attack and we guarantee your data safe',
  'Get your favorite Friends Fastest Chat at your Message'
];

const images = [
  'assets/images/0.json',
  'assets/images/1.json',
  'assets/images/2.json',
];
