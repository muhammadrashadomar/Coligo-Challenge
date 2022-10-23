import 'package:flutter/material.dart';
import '../../resources/colors.dart';
import '../../resources/responsive_sizes.dart';

class ROutlinedButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;
  final double height;
  final Color bgColor;

  const ROutlinedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.height,
    this.bgColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width, height)),
        maximumSize: MaterialStateProperty.all(Size(kWidth(context), height)),
        backgroundColor: MaterialStateProperty.all(bgColor),
        enableFeedback: true,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: RColors.buttons),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: RColors.buttons,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
