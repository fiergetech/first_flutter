import 'package:first_flutter/log_in/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Center(
                  child: Text("Welcome to Smart Home"),
                ),
              ),
            )
          );
        }
        else if(snapshot.hasError){
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: Text("An error occure, please wait"),
                  ),
                ),
              )
          );
        }
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Smart Home App",
          home: LoginScreen(),
        );
      }
    );
  }
}
