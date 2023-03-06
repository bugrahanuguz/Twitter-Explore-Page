import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
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
          ),
          //Icon(Icons.account_circle),
          //iconSize: 30,

          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(2),
              width: 270,
              height: 40,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 224, 221, 221),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide.none),
                    hintText: "Twitter'da Ara",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
          ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   height: 40,
          //   width: 250,
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 236, 232, 232),
          //       borderRadius: BorderRadius.circular(25)),
          //   child: TextButton(
          //     style: ButtonStyle(),
          //     onPressed: () {},
          //     child: Text("Twitter'da Ara"),
          //   ),
          // ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, size: (30)),
          )
        ],
      ),
    );
  }
}
