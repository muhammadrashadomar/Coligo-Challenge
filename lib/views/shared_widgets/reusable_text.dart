import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RText extends StatelessWidget {
  const RText({
    Key? key,
    required this.txt,
    this.size,
    this.color,
    this.weight,
    this.fontFamily,
    this.shadow,
    this.align = TextAlign.left,
    this.maxLines = 1,
    this.height = 1,
    this.style = FontStyle.normal,
  }) : super(key: key);

  final String txt;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final String? fontFamily;
  final List<Shadow>? shadow;
  final TextAlign align;
  final int maxLines;
  final double height;
  final FontStyle style;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      txt,
      minFontSize: 12,
      textDirection: TextDirection.ltr,
      textAlign: align,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontFamily: fontFamily,
        shadows: shadow,
        height: height,
        letterSpacing: 0,
        fontStyle: style,
      ),
    );
  }
}
