class TodoModel {
  String id;
  String title;
  String description;
  bool isCompleted;

  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
  });

  factory TodoModel.fromMap(Map<String, dynamic> data) {
    return TodoModel(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      isCompleted: data['isCompleted'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
    };
  }
}
