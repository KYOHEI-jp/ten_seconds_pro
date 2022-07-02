class Todo {
  int? id;
  final String title;
  DateTime creationDate;
  bool isChecked;


  Todo({
    this.id,
    required this.title,
    required this.creationDate,
    required this.isChecked
  });