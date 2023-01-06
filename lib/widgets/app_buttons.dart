import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {

  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons({Key? key,
    this.text="empty",
    this.icon,
    this.isIcon = false,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
      ),
      child: isIcon == false? Center(child: AppText(text: this.text!, color: this.color,)):Icon(icon, color: this.color,) ,
    );
  }
}
