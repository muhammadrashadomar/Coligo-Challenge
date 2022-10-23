import 'package:coligo_test/controllers/dashborad_ctrl.dart';
import 'package:coligo_test/data_sources/api/mock_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
// 1
  final dashboardController = DashboardController();
// 2
  dashboardController.api = MockAPI();

  group('Given Dashboard Page Loads', () {
    // Test announcements
    test('Page should load a list of announcements from remote api', () async {
      // 1
      await dashboardController.getAnnouncements();
      // 2
      expect(dashboardController.announcements.length, 3);
      // 3
      expect(
        dashboardController.announcements[0].sender,
        'Mr.Muhammad',
      );
      expect(
        dashboardController.announcements[1].department,
        'Physics',
      );
      expect(
        dashboardController.announcements[2].photo,
        'imgUrl2',
      );
      expect(
        dashboardController.announcements[1].body,
        'Hello, World!',
      );
    });

    // Test Tasks
    test('Page should load a list of tasks from remote api', () async {
      // 1
      await dashboardController.getTasks();
      // 2
      expect(dashboardController.tasks.length, 4);
      // 3
      expect(
        dashboardController.tasks[0].title,
        'Quiz0',
      );
      expect(
        dashboardController.tasks[1].course,
        "Math1",
      );
      expect(
        dashboardController.tasks[2].topic,
        "Unit2",
      );
      expect(
        dashboardController.tasks[3].dueTo,
        "2023",
      );
      expect(
        dashboardController.tasks[2].course,
        "Math2",
      );
      expect(
        dashboardController.tasks[3].title,
        "Quiz3",
      );
    });
  });
}
