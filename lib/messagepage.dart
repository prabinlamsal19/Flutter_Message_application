// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:frontend_msngr/bubble.dart';

class MessagePage extends StatefulWidget {
  final String personName;
  const MessagePage({required this.personName});
  

  @override
  State<MessagePage> createState() => _MessagePageState(personName);
}

class _MessagePageState extends State<MessagePage> {
  final String personName;
  _MessagePageState(this.personName);

  String sentText = 'hello';
  final List TextBubbles = ['message1', 'message2', 'message3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text(personName),
        ),
        body: Column(children: [
          Container(
              color: Color.fromARGB(255, 109, 128, 136),
              height: (MediaQuery.of(context).size.height) * 0.8,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: TextBubbles.length,
                  itemBuilder: (context, index) {
                    return Bubble(bubbleText:TextBubbles[index]);
                  })),
          MessageBar(
            onSend: (a) => {
              setState(()=>TextBubbles.add(a))
            },
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          )
        ]));
  }
}



