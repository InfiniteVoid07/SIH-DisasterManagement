import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
  color: Colors.white,
  shadows: [
    Shadow(
        // bottomLeft
        offset: Offset(-2, -2),
        color: Colors.black),
    Shadow(
        // bottomRight
        offset: Offset(2, -2),
        color: Colors.black),
    Shadow(
        // topRight
        offset: Offset(2, 2),
        color: Colors.black),
    Shadow(
        // topLeft
        offset: Offset(-2, 2),
        color: Colors.black),
  ],
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
