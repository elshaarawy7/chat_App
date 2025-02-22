import 'package:chat_app2/pages/Register.dart';
import 'package:chat_app2/pages/home_screan.dart';
import 'package:chat_app2/widgets/MyBatton.dart';
import 'package:chat_app2/widgets/textBaron.dart';
import 'package:chat_app2/widgets/textField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              const  Text_field(
                  labelText: "passowrd",
                  obscureText: true,
                ),
              const  SizedBox(
                  height: 25,
                ),
                Mybatton(
                 onPressed: () {
                   if(formKey.currentState!.validate()){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ChatScreen();
                   }));
                   }
                 },
                  text: 'Login',
                ),
                Textbton(
                  title: 'Dont have an account? Register',
                  onPressed: () {
                   
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                  );
                    
                   
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
