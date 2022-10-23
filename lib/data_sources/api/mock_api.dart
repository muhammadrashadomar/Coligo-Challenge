import 'package:coligo_test/data_sources/api/base_api_calling.dart';
import 'package:coligo_test/models/quiz.dart';
import 'package:coligo_test/models/announcement.dart';

class MockAPI implements BaseApiCalling {
  @override
  Future<List<Announcement>?> getAnnouncements() {
    return Future.value([
      Announcement(
        sender: "Mr.Muhammad",
        photo: "imgUrl0",
        department: "Programming",
        body: "Hello, World",
      ),
      Announcement(
        sender: "Rashad",
        photo: "imgUrl1",
        department: "Physics",
        body: "Hello, World!",
      ),
      Announcement(
        sender: "Omar",
        photo: "imgUrl2",
        department: "Math",
        body: "Hello, World!!",
      ),
    ]);
  }

  @override
  Future<List<Task>?> getTasks() {
    return Future.value([
      Task(
        title: "Quiz0",
        course: "Math0",
        topic: "Unit0",
        dueTo: "2020",
      ),
      Task(
        title: "Quiz1",
        course: "Math1",
        topic: "Unit1",
        dueTo: "2021",
      ),
      Task(
        title: "Quiz2",
        course: "Math2",
        topic: "Unit2",
        dueTo: "2022",
      ),
      Task(
        title: "Quiz3",
        course: "Math3",
        topic: "Unit3",
        dueTo: "2023",
      ),
    ]);
  }
}
