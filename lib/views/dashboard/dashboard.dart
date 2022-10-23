import 'package:coligo_test/controllers/dashborad_ctrl.dart';
import 'package:coligo_test/views/dashboard/desktop/desktop.dart';
import 'package:coligo_test/views/dashboard/phone/phone.dart';
import 'package:coligo_test/views/dashboard/tablet/tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../resources/responsive_sizes.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<DashboardController>(context, listen: false);
    provider.getAnnouncements();
    provider.getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return const ResponsiveSc(
      mobile: DashboardPhone(),
      smallTablet: DashboardTablet(screenSize: ScreenSize.smallTablet),
      mediumTablet: DashboardTablet(screenSize: ScreenSize.mediumTablet),
      largeTablet: DashboardDesktop(screenSize: ScreenSize.largeTablet),
      desktop: DashboardDesktop(screenSize: ScreenSize.desktop),
    );
  }
}
