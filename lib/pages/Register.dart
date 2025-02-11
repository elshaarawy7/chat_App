import 'package:chat_app2/pages/home_screan.dart';
import 'package:chat_app2/pages/logIn.dart';
import 'package:chat_app2/widgets/MyBatton.dart';
import 'package:chat_app2/widgets/textBaron.dart';
import 'package:chat_app2/widgets/textField.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> { 
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              const  Center(
                    child: Icon(
                  Icons.chat,
                  size: 50,
                  color: Colors.white,
                )),
             const   SizedBox(
                  height: 10,
                ),
              const  Text(
                  "welcom to chat app",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const  SizedBox(
                  height: 150,
                ),
              const  Text_field(
                  labelText: "Email",
                  obscureText: false,
                ),
              const  SizedBox(
                  height: 10,
                ),
              
              const  SizedBox(
                  height: 25,
                ),
                Mybatton(
                  text: 'Register', 
                  onPressed: () {
                     if(formKey.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ChatScreen();
                     }));
                     }
                  },
                ),
                Textbton(
                  title: 'Already have an account? Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

         