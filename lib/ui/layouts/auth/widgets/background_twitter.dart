// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';


class BackgroundTwitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: builBoxDecoration(),
        child: Container(
          constraints: const BoxConstraints( maxWidth: 400 ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric( horizontal: 30),
              child: Image(
                image: AssetImage('twitter-white-logo.png'),
                width: 400,
                ),
            ),
          ),
        ),
      
      ),
    );
  }

  BoxDecoration builBoxDecoration() {
    return   const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('twitter-bg.png'),
        fit: BoxFit.cover,

        )

    );
  }
}