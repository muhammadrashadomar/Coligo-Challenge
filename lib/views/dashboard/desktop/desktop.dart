import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/announcements.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/exams_time.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/sidebar.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/topbar.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/whats_due.dart';
import 'package:flutter/material.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({
    required this.screenSize,
    super.key,
  });
  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constr) {
            const double sidebarWidth = 250;
            final double examsTimeCardWidth = constr.maxWidth - sidebarWidth;
            const double whatsDueCardWidth = 300;
            final double announcementsCardWidth =
                constr.maxWidth - sidebarWidth - 60 - whatsDueCardWidth;
            //
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SideBar(width: sidebarWidth),
                SizedBox(
                  width: examsTimeCardWidth,
                  child: Column(
                    children: [
                      const Topbar(screenSize: ScreenSize.desktop),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(20),
                          shrinkWrap: true,
                          children: [
                            const ExamsTimeCard(),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Announcements(
                                  width: announcementsCardWidth,
                                  screenSize: screenSize,
                                ),
                                const SizedBox(width: 20),
                                const WhatsDue(width: whatsDueCardWidth),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
