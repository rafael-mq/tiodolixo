import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
            bottom: Radius.zero,
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Adicionar Tarefa",
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 40.0,
              width: double.infinity,
              child: FlatButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: Text("Criar"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
