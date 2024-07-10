import 'package:flutter/material.dart';

Widget TextThemesTitle({
  required String text,
  required double fontsize,
  FontWeight? fontWeight,
  Color? Colors,
}) =>
    Text(
      text,
      style: TextStyle(
        color: Colors,
        fontWeight: fontWeight,
        fontSize: fontsize,
      ),
      //maxLines: 3,
      //overflow: TextOverflow.ellipsis,
    );

Widget CustomTextButtom({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18.0),
      ),
    );
