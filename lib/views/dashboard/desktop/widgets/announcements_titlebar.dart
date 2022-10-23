import 'package:flutter/material.dart';

import '../../../../resources/colors.dart';
import '../../../../resources/constants.dart';
import '../../../shared_widgets/reusable_text.dart';

class AnnounceTitlebar extends StatelessWidget {
  const AnnounceTitlebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RText(
                txt: Constants.announcesTitle,
                size: 25,
                color: RColors.title,
                weight: FontWeight.bold,
              ),
              GestureDetector(
                child: const RText(
                  txt: 'All',
                  size: 18,
                  color: RColors.buttons,
                  weight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          RText(
            txt: Constants.announcesSubtitle,
            size: 13,
            color: RColors.subtitle,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
