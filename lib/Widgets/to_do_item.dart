import 'package:flutter/material.dart';
import 'package:to_do_list/colors.dart';
import 'package:to_do_list/model.dart';

class  toDoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChange;
  final onRemoveItem;

  const  toDoItem({super.key,required this.todo,required this.onToDoChange,required this.onRemoveItem});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child:ListTile(
        onTap: (){
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular( 20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.white,
        leading: Icon(todo.isDone? Icons.check_box:Icons.check_box_outline_blank,color: tdBlue,),
        title: Text( todo.todoText!,
            style: TextStyle(
              fontSize: 26,
              color: tdBlack,
              decoration:todo.isDone ? TextDecoration.lineThrough : null),),
        trailing: Container(
          padding: EdgeInsets.all( 0),
          margin: EdgeInsets.symmetric(),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular( 5)
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onRemoveItem(todo.id);
            },
          ),
        ),
      )
    );
  }
}