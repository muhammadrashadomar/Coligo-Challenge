import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/responsive_sizes.dart';

class RFilledButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;
  final double height;
  final Color color;

  const RFilledButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.height,
    this.color = RColors.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key(title),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width, height)),
        maximumSize: MaterialStateProperty.all(Size(kWidth(context), height)),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

//

