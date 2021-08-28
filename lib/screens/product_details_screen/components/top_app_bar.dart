import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return       Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/icons/back icon.png',
            scale: 2,
          ),
        ),
        Image.asset(
          'assets/icons/filter icon.png',
          scale: 2,
        ),
      ],
    );
  }
}
