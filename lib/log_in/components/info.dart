
import 'package:flutter/material.dart';

class Credentials extends StatelessWidget {

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
              backgroundImage: AssetImage(
                  "images/avatar.png"
              ),
              backgroundColor: Colors.orange.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
