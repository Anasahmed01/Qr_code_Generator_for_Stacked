import 'package:flutter/material.dart';

textfield({required icon, required hintText, required controler}) {
  return TextField(
    style: const TextStyle(color: Colors.white),
    controller: controler,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      suffixIcon: icon,
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

var backgroundColor = const Color(0xff101D25);
