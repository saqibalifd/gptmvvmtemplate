class TodoModel {
  String id;
  String title;
  String description;
  String uid;
  bool isCompleted;

  TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.uid,
    this.isCompleted = false,
  });

  factory TodoModel.fromMap(Map<String, dynamic> data) {
    return TodoModel(
      id: data['id'],
      title: data['title'],
      uid: data['uid'],
      description: data['description'],
      isCompleted: data['isCompleted'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'uid': uid,
      'description': description,
      'isCompleted': isCompleted,
    };
  }
}
