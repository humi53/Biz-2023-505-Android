class ArtDto {
  String uID;
  String title;
  String description;
  String imagePath;

  ArtDto({
    required this.uID,
    required this.title,
    required this.description,
    required this.imagePath,
  });
  Map<String, dynamic> toJson() {
    return {
      'uID': uID,
      'title': title,
      'description': description,
      'imagePath': imagePath,
    };
  }
}
