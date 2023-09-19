import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArtDto {
  String userUid;
  String userNick;
  String title;
  String description;
  String imagePath;
  DateTime date;

  ArtDto({
    required this.userUid,
    required this.userNick,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userUid': userUid,
      'userNick': userNick,
      'title': title,
      'description': description,
      'imagePath': imagePath,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory ArtDto.fromMap(Map<String, dynamic> map) {
    return ArtDto(
      userUid: map['userUid'] as String,
      userNick: map['userNick'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      imagePath: map['imagePath'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ArtDto.fromJson(String source) =>
      ArtDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ArtDto(userUid: $userUid, userNick: $userNick, title: $title, description: $description, imagePath: $imagePath, date: $date)';
  }
}
