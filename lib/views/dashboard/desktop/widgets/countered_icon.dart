import 'package:flutter/material.dart';

import '../../../../resources/colors.dart';

class CounteredIcon extends StatelessWidget {
  const CounteredIcon({
    this.counter = 0,
    required this.icon,
    required this.label,
    Key? key,
  }) : super(key: key);

  final int counter;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // Show Noifications screen
          },
          child: Icon(
            icon,
            semanticLabel: label,
            color: RColors.icons,
            size: 35,
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: RColors.buttons,
              borderRadius: BorderRadius.circular(15),
            ),
            constraints: const BoxConstraints(
              minWidth: 20,
              minHeight: 20,
            ),
            child: Text(
              '$counter',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
