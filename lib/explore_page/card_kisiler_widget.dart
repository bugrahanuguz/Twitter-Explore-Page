import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardKisilerWidget extends StatefulWidget {
  const CardKisilerWidget({super.key});

  @override
  State<CardKisilerWidget> createState() => _CardKisilerWidgetState();
}

class _CardKisilerWidgetState extends State<CardKisilerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 100, top: 10, bottom: 0),
              width: 10,
              height: 10,
              child: Icon(
                Icons.close,
                size: 22,
                color: Colors.grey.shade500,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: Image.asset(
                    'assets/profile.jpeg',
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ), //Icon(
                  //   Icons.account_circle,
                  //   size: 80,
                  // ),
                ),
              ),
            ),
            const Text(
              "Buğrahan Uğuz",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Text(
              "@bugrahanuguz",
              style: TextStyle(fontSize: 16),
            ),
            Container(
              width: 150,
              height: 35,
              margin: const EdgeInsets.only(top: 45),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(35)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Takip et",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
