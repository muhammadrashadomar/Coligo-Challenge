import 'package:coligo_test/models/sidebar_tile.dart';
import 'package:flutter/material.dart';

class Constants {
  //---------------------------------------------------------
  //Mark: Api Constants
  static const announcementsPath = 'fakeAnnouncementsService';
  static const tasksPath = 'fakeQuizesService';

//---------------------------------------------------------
//Mark: UI Constants
  static const String appTitle = 'Coligo';
  //
  static const String examsTimeTitle = 'EXAMS TIME';
  static const String examsSubtitle =
      "Here we are, Are you ready to fight? Don't worry, we prepared some tips to be ready for your exams";

  static const String examsquote =
      '''"Nothing happens until something moves" - Albert Einstein''';

//---------------------------------------------------------
//Mark: App Constants
  static const String announcesTitle = 'Announcements';
  static const String announcesSubtitle = 'We educate warriors! keep updated:';

//---------------------------------------------------------
//Mark: App Constants
  static const String whatsDueTitle = "What's due";
  static const String whatsDueSubtitle =
      'Sometimes "LATER" becomes "NEVER" Go Now';

  static final sidebarTiles = [
    SidebarTile(name: 'Dashboard', icon: Icons.house_rounded),
    SidebarTile(name: 'Schedule', icon: Icons.calendar_month),
    SidebarTile(name: 'Courses', icon: Icons.library_books),
    SidebarTile(name: 'Gradebook', icon: Icons.school),
    SidebarTile(name: 'Performance', icon: Icons.query_stats),
    SidebarTile(name: 'Announcement', icon: Icons.campaign_outlined),
  ];
}
