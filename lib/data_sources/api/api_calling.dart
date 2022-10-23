import 'dart:convert';
import 'dart:io';

import 'package:coligo_test/data_sources/api/base_api_calling.dart';
import 'package:coligo_test/models/quiz.dart';
import 'package:coligo_test/models/announcement.dart';
import 'package:coligo_test/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCalling implements BaseApiCalling {
  final String _baseUrl = 'https://muhammad-r-omar.mocklab.io/';

  // Singleton
  ApiCalling._shared();
  static ApiCalling instance = ApiCalling._shared();

  @override
  Future<List<Announcement>?> getAnnouncements() async {
    final url = _baseUrl + Constants.announcementsPath;

    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List<dynamic>;
        final announcements =
            jsonData.map((e) => Announcement.fromMap(e)).toList();

        return announcements;
      } else {
        throw Exception('There is a problem: ${response.statusCode}');
      }
    } on HttpException catch (e) {
      debugPrint(e.message);
      return null;
    }
  }

//
  @override
  Future<List<Task>?> getTasks() async {
    final url = _baseUrl + Constants.tasksPath;

    try {
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List<dynamic>;
        final tasks = jsonData.map((e) => Task.fromMap(e)).toList();

        return tasks;
      } else {
        throw Exception('There is a problem: ${response.statusCode}');
      }
    } on HttpException catch (e) {
      debugPrint(e.message);
      return null;
    }
  }
}
