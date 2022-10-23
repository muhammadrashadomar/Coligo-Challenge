import 'package:coligo_test/resources/images.dart';
import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../dashboard/desktop/widgets/countered_icon.dart';
import 'reusable_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final ScreenSize screenSize;

  const CustomAppBar({
    Key? key,
    this.title,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: RColors.title,
        size: 30,
      ),
      title: RText(
        txt: 'Welcome Talia,',
        size: 27,
        weight: FontWeight.w600,
        color: RColors.title,
      ),
      actions: [
        screenSize != ScreenSize.desktop && screenSize != ScreenSize.largeTablet
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Search Functionality
                    },
                    child: const Icon(
                      Icons.search,
                      semanticLabel: 'Search',
                      color: RColors.icons,
                      size: 35,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        const Center(
          child: CounteredIcon(
            icon: Icons.notifications,
            counter: 3,
            label: 'Notifications',
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: CounteredIcon(
              icon: Icons.mail,
              counter: 1,
              label: 'Mail',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              RImages.studentImage,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
