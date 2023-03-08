import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/pp_button.dart';

class NotificationTabBar extends StatelessWidget {
  const NotificationTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyPpButon(),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(top: 10, left: 10),
            width: 270,
            height: 40,
            child: Text(
              "Bildirimler",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, size: (30)),
          )
        ],
      ),
    );
  }
}
