import 'package:coligo_test/models/announcement.dart';
import 'package:coligo_test/models/quiz.dart';

abstract class BaseApiCalling {
  Future<List<Announcement>?> getAnnouncements();
  Future<List<Task>?> getTasks();
}
