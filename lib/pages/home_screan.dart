
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  TextEditingController controller =TextEditingController();

  final List<String> messages = [
    "hello im a new user what about you",
    "hello im a new user what about you sadfasdf",
    "hello im a new user what about you sadfasdf",
    "hello im a new user what about you sadfasdf",
    "hello im a new user what about you",
  ];

  void seandMasseg(String data){
    setState(() {
      messages.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color: Colors.white),
            SizedBox(width: 8),
            Text("Chat" , style: TextStyle(
              color: Colors.white ,
              fontSize: 20 ,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                bool isMe = index % 2 == 0; // تبديل بين المستخدم والآخر
                return Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.teal[700] : Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      messages[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add(data);
                      controller.clear();
                    },
                    
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.teal[700]),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}