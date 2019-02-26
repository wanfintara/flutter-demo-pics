class ImageModel {
  int id;
  String title;
  String url;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  /// Identical
  /*
  ImageModel.fromJsonExample(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        url = parsedJson['url'],
        title = parsedJson['title'];
  */
}
