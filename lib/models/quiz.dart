class Task {
  Task({
    required this.title,
    required this.course,
    required this.topic,
    required this.dueTo,
  });

  String title;
  String course;
  String topic;
  String dueTo;

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] as String,
      course: map['course'] as String,
      topic: map['topic'] as String,
      dueTo: map['dueTo'] as String,
    );
  }
}
