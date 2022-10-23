class Announcement {
  Announcement({
    required this.sender,
    required this.photo,
    required this.department,
    required this.body,
  });

  String sender;
  String photo;
  String department;
  String body;

  factory Announcement.fromMap(Map<String, dynamic> map) {
    return Announcement(
      sender: map['sender'] as String,
      photo: map['photo'] as String,
      department: map['department'] as String,
      body: map['body'] as String,
    );
  }
}
