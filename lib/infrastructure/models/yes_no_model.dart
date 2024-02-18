class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  //Factory constructor: me permite mapear la respuesta desde el constructor
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['answer'], forced: json['forced'], image: json['image']);
}
