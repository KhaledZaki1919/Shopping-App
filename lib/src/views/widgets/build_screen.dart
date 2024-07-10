import 'package:flutter/material.dart';
import 'package:shoping/src/utils/custom_text.dart';

Widget BuildScreen({
  required String Title_Text,
}) =>
    Column(
      children: [
        const Image(
          image: AssetImage('assets/images/image1.png'),
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextThemesTitle(text: 'SNEAKERS', fontsize: 32.0),
        SizedBox(
          height: 20.0,
        ),
        TextThemesTitle(text: Title_Text, fontsize: 20.0, Colors: Colors.white),
      ],
    );
