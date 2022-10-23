import 'package:coligo_test/resources/responsive_sizes.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/announcements.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/exams_time.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/sidebar.dart';
import 'package:coligo_test/views/dashboard/desktop/widgets/whats_due.dart';
import 'package:coligo_test/views/shared_widgets/r_appbar.dart';
import 'package:flutter/material.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({
    required this.screenSize,
    super.key,
  });

  final double sidebarWidth = 250;
  final ScreenSize screenSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(screenSize: screenSize),
        drawer: Drawer(
          child: SideBar(width: sidebarWidth),
        ),
        //
        body: LayoutBuilder(
          builder: (context, constr) {
            final double examsTimeCardWidth = constr.maxWidth;
            const double whatsDueCardWidth = 300;
            final double announcementsCardWidth =
                constr.maxWidth - 60 - whatsDueCardWidth;
            //
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: examsTimeCardWidth,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
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
                                  screenSize: ScreenSize.phone,
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
