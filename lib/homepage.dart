import 'package:flutter/material.dart';
import 'package:frontend_msngr/textpeek.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Messenger Application"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TextPeek(name: "Mom",latest_text: "hello mom"),
            const TextPeek(name:"rizal" ,latest_text: " what colour is your bugati"),
            const TextPeek(name: "Baral", latest_text: "What clour is your ferrari"),
            
          ],
        ),
      ),
    );
  }
}
