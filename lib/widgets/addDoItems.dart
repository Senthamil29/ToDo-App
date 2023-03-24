import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/Items.dart';

class AddItems extends StatelessWidget {
  final ToDo todo;
  final onChangeHandle;
  final deleteItem;

  const AddItems(
      {Key? key,
      required this.todo,
      required this.onChangeHandle,
      required this.deleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ListTile(
            onTap: () {
              onChangeHandle(todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.white,
            leading: Icon(
                todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
                color: Colors.blue),
            title: Text(
              todo.doItems!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 20,
                icon: Icon(Icons.delete),
                onPressed: () {
                  deleteItem(todo.id);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
