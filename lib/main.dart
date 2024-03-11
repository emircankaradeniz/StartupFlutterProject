import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String birinciSayi = '------';
  String ikinciSayi = '------';
  String ucuncuSayi = '------';

  void onPressed() {
    print("Düğmeye basıldı");
    var rnd = Random();
    setState(() {
      birinciSayi = rnd.nextInt(10).toString();
      ikinciSayi = rnd.nextInt(10).toString();
      ucuncuSayi = rnd.nextInt(10).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'İlk Ödev',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('3 Haneli Rastgele Sayı'),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(birinciSayi, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  SizedBox(width: 30),
                  Text(ikinciSayi, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  SizedBox(width: 30),
                  Text(ucuncuSayi, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 16),
              CustomBtn(
                onPressed: onPressed,
                text: 'Sayı üretmek için tıklayın',
                backgroundColor: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color backgroungColor2=Colors.blue;
  final Color textColor;

  const CustomBtn({
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}