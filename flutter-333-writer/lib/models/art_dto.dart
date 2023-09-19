import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArtDto {
  String title;
  String description;
  String imagePath;

  ArtDto({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'imagePath': imagePath,
    };
  }

  factory ArtDto.fromMap(Map<String, dynamic> map) {
    return ArtDto(
      title: map['title'] as String,
      description: map['description'] as String,
      imagePath: map['imagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArtDto.fromJson(String source) =>
      ArtDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ArtDto(title: $title, description: $description, imagePath: $imagePath)';
}
