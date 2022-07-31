import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_flutter/widgets/input_field.dart';
import 'package:flutter/material.dart';

class Credentials extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailTextController =
      TextEditingController(text: '');
  final TextEditingController _passTextController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: const AssetImage("images/avatar.png"),
              backgroundColor: Colors.orange.shade800,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          InputField(
            hintText: "Enter Email",
            icon: Icons.email_rounded,
            obscureText: false,
            textEditingController: _emailTextController,
          ),
          const SizedBox(
            height: 15.0,
          ),
          InputField(
            hintText: "Enter Password",
            icon: Icons.lock,
            obscureText: true,
            textEditingController: _passTextController,
          ),
        ],
      ),
    );
  }
}
