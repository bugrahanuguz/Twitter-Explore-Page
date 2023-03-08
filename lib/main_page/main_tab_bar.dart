import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/pp_button.dart';

class MyMainTabBar extends StatelessWidget {
  const MyMainTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyPpButon(),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.only(top: 5, left: 0),
          width: 336,
          height: 40,
          // width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/twitter.png',
            fit: BoxFit.fitHeight,
            width: 80,
            height: 80,
          ),
        )
      ],
    ));
  }
}
