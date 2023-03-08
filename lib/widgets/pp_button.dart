import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyPpButon extends StatelessWidget {
  const MyPpButon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(18),
            child: Image.asset(
              'assets/profile.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
