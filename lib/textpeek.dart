import 'package:flutter/material.dart';
import 'messagepage.dart';

class TextPeek extends StatelessWidget {
  final name;
  final latest_text;

  const TextPeek({required this.name, required this.latest_text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.push(context,
              MaterialPageRoute(builder: (context) => MessagePage(personName: name))),
      child: Container(
          margin: EdgeInsets.only(bottom: 40),
          height: 20,
          child: ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.notifications_off),
              title: Text("$name"),
              subtitle: Text("$latest_text"),
            ),
          ),
    );
  }
}
