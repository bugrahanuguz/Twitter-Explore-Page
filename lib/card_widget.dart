import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'card_kisiler_widget.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 381,
      height: 270,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardKisilerWidget(),
            CardKisilerWidget(),
            CardKisilerWidget(),
            CardKisilerWidget(),
            CardKisilerWidget(),
          ],
        ),
      ),
    );
  }
}
