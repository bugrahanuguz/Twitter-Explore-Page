import 'package:flutter/material.dart';
import 'package:flutter_widget/explore_page/gundem_widget.dart';
import 'package:flutter_widget/explore_page/tab_bar.dart';

import 'explore_page/card_widget.dart';
import 'nav_bar_widget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
