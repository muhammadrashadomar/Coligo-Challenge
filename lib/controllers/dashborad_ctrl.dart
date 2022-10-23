import 'package:coligo_test/data_sources/api/base_api_calling.dart';
import 'package:flutter/material.dart';

import '../data_sources/api/api_calling.dart';
import '../models/announcement.dart';
import '../models/quiz.dart';

class DashboardController extends ChangeNotifier {
  List<Announcement> announcements = [];
  List<Task> tasks = [];
  BaseApiCalling api = ApiCalling.instance;

//---------------------------------------------------------
//Mark: Methods
  Future<void> getAnnouncements() async {
    final data = await api.getAnnouncements();

    if (data != null) {
      announcements = data;
      notifyListeners();
    }
  }

  Future<void> getTasks() async {
    final data = await api.getTasks();

    if (data != null) {
      tasks = data;
      notifyListeners();
    }
  }
}
