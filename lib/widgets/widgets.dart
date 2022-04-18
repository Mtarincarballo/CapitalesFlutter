import 'package:flutter/material.dart';

Widget appBar(BuildContext context){
  return RichText(
    text: const TextSpan(

      style: TextStyle(fontSize: 20, ),
      children: <TextSpan>[
        TextSpan(text: 'Capitales', style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.blue)),
        TextSpan(text: ' del mundo', style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.lightGreen)),
      ],
    ),
  );
}