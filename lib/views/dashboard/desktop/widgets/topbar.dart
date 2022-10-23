import 'package:coligo_test/resources/colors.dart';
import 'package:coligo_test/resources/images.dart';
import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:coligo_test/views/shared_widgets/r_form_field.dart';
import 'package:coligo_test/views/shared_widgets/reusable_text.dart';
import 'package:flutter/material.dart';

import 'countered_icon.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    required this.screenSize,
    super.key,
  });

  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(50, 20, 20, 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RText(
            txt: 'Welcome Talia,',
            size: 27,
            weight: FontWeight.w600,
            color: RColors.title,
          ),
          Row(
            children: [
              screenSize == ScreenSize.desktop
                  ? const RFormField(title: 'Search')
                  : const SizedBox(),
              const SizedBox(width: 20),
              const CounteredIcon(
                icon: Icons.notifications,
                counter: 3,
                label: 'Notifications',
              ),
              const SizedBox(width: 20),
              const CounteredIcon(
                icon: Icons.mail,
                counter: 1,
                label: 'Mail',
              ),
              const SizedBox(width: 20),
              // Profile
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(RImages.studentImage),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
