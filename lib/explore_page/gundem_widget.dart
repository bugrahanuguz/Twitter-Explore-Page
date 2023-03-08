import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GundemWidget extends StatefulWidget {
  const GundemWidget({super.key});

  @override
  State<GundemWidget> createState() => _GundemWidgetState();
}

class _GundemWidgetState extends State<GundemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView.separated(
        padding: EdgeInsetsDirectional.only(start: 10),
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          height: 70,
          margin: EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Spor . Gündemdekiler",
                      style: TextStyle(
                          wordSpacing: 2,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700),
                    ),
                    const Text(
                      "#F12023",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "11,3 B Tweet",
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    )
                  ]),
              PopupMenuButton(
                color: Colors.grey.shade400,
                iconSize: 20,
                itemBuilder: (context) => [],
              )
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
