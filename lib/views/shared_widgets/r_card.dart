import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class RCard extends StatelessWidget {
  const RCard({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.padding = 0,
    this.bottomPadding = 0,
    this.cornerRaduis = 10,
    this.color = Colors.white,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final double? width;
  final double padding;
  final double bottomPadding;
  final double cornerRaduis;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.fromLTRB(padding, padding, padding, bottomPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRaduis),
        color: color ?? Theme.of(context).backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: RColors.shadow,
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: child,
    );
  }
}
