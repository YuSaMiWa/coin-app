import 'package:flutter/material.dart';
import 'package:cat_motion/design/colors.dart';
import 'package:cat_motion/design/dimensions.dart';

class SendButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const SendButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(width200, height40),
            maximumSize: const Size.fromHeight(height40),
            backgroundColor: primaryColor,
            elevation: elevation0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius20)),
            padding: const EdgeInsets.only(left: padding16, right: padding16)),
        child: Text(title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: surfaceColor,
                fontSize: fontSize16,
                fontWeight: FontWeight.w600)));
  }
}
