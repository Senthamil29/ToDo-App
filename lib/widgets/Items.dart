class ToDo {
  String? id;
  String? doItems;
  bool isDone;

  ToDo({
    required this.id,
    required this.doItems,
    this.isDone = false,
  });

  static List<ToDo> todolist() {
    return [
      ToDo(id: '1', doItems: 'Learn Flutter', isDone: true),
      ToDo(id: '2', doItems: 'ListView'),
      ToDo(id: '3', doItems: 'GridView', isDone: true),
      ToDo(id: '4', doItems: 'ListTile'),
      ToDo(id: '5', doItems: 'GridTile'),
    ];
  }
}
