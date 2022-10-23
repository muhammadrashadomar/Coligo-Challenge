import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:coligo_test/views/dashboard/phone/announcement_phone.dart';
import 'package:coligo_test/views/shared_widgets/r_card.dart';
import 'package:flutter/material.dart';

import 'announcements_desktop.dart';
import 'announcements_titlebar.dart';

class Announcements extends StatelessWidget {
  const Announcements({
    this.width,
    required this.screenSize,
    super.key,
  });

  final double? width;
  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return RCard(
      width: width,
      child: Column(
        children: [
          const AnnounceTitlebar(),
          screenSize == ScreenSize.desktop
              ? const AnnouncementBigScreen()
              : const AnnouncementSmallScreen(),
        ],
      ),
    );
  }
}
