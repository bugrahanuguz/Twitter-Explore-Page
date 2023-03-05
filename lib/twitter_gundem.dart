import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_widget/gundem_widget.dart';
import 'package:flutter_widget/tab_bar.dart';

import 'card_widget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required String title});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> gundem = ["Meral Akşener"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: TabBarWidget()),
        Column(
          children: [
            Container(
              width: 390,
              height: 50,
              padding: EdgeInsets.all(8),
              child: const Text(
                "Türkiye gündemleri",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GundemWidget(),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 350,
            height: 50,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Text(
              "Daha fazla göster",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
        ),
        Container(
          width: 390,
          height: 50,
          padding: EdgeInsets.all(8),
          child: Text(
            "Kimi takip etmeli",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              CardWidget(),
            ],
          ),
        )
      ],
    ));
  }
}
