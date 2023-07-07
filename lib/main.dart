import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text("Decide"),
        backgroundColor: Colors.blue.shade500,

      ),
body: myApp(),
    )
  ),
);

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  Random random = Random();
  int a  =1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                 onPressed:(){
                   setState(() {
                     a = random.nextInt(5)+1;
                     print(a);
                   });
            },
                child: Image.asset("images/ball$a.png"),

            ),
          ),
        ],
      ),
    );
  }
}
