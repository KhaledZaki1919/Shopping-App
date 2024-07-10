import 'package:flutter/material.dart';

Widget CustomButtom({
  required String text,
  required Function function,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.black,
      ),
      width: double.infinity,
      height: 70.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF00FFB2),
            fontSize: 20.0,
          ),
        ),
      ),
    );
