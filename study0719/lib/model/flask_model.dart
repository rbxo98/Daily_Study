class FlaskModel{
  late String request;
  FlaskModel({required this.request});

  FlaskModel.fromJson(Map<String, dynamic> json) {
    request=json['request'];
  }
}