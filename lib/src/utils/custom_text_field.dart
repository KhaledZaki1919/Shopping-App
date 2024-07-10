import 'package:flutter/material.dart';

Widget custom_text_field({
  required TextEditingController controller,
  required String text,
  required bool obscureText,
  required Function validator,
  required TextInputType KeyboardType,
  IconData? icon,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: KeyboardType,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        hintText: text,
        suffixIcon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      validator: (value) {
        return validator(value);
      },
    );
