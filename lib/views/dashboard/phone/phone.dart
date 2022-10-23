import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/announcements.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/exams_time.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/sidebar.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/whats_due.dart';
import 'package:coligo_test/views/shared_widgets/r_appbar.dart';
import 'package:flutter/material.dart';

class DashboardPhone extends StatelessWidget {
  const DashboardPhone({super.key});
  final double sidebarWidth = 250;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          screenSize: ScreenSize.phone,
        ),
        drawer: Drawer(
          key: const Key('drawer'),
          child: SideBar(width: sidebarWidth),
        ),
        //
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: const [
            ExamsTimeCard(),
            SizedBox(height: 20),
            Announcements(screenSize: ScreenSize.phone),
            SizedBox(height: 20),
            WhatsDue(),
          ],
        ),
      ),
    );
  }
}

// AppBar rAppBar(BuildContext context) {
//   return AppBar(
//     toolbarHeight: 75,
//     iconTheme: IconThemeData(
//       color: RColors.title,
//       size: 30,
//     ),
//     // leading: RText(
//     //   txt: 'Welcome Talia,',
//     //   size: 27,
//     //   weight: FontWeight.w600,
//     //   color: RColors.title,
//     // ),
//     // actions: const [
//     //   CounteredIcon(
//     //     icon: Icons.notifications,
//     //     counter: 3,
//     //     label: 'Notifications',
//     //   ),
//     //   CounteredIcon(
//     //     icon: Icons.mail,
//     //     counter: 1,
//     //     label: 'Mail',
//     //   ),
//     //   CircleAvatar(
//     //     radius: 20,
//     //     // Todo: fill with dynamic code
//     //     backgroundColor: Colors.orangeAccent,
//     //   ),
//     // ],
//     title: const Topbar(),
//     backgroundColor: Colors.white,
//     elevation: 0,
//   );
// }
