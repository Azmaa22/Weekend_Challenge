import 'package:flutter/material.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          'assets/icons/more icon.png',
          scale: 2,
        ),
        const SizedBox(
          height: 20,
        ),
        Text('Green'),
        const SizedBox(
          height: 100,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Shape Class',
            style: TextStyle(
              color: Color(0xFFFD939D),
            ),
          ),
        ),
        Text(
          '\.',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFD939D),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text('Indore Plants'),
        ),
        const SizedBox(
          height: 50,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text('Green Plants'),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        Container(
          width: size.width * 0.25,
          height: size.height * 0.08,
          decoration: BoxDecoration(
              color: Color(0xFFFD939D),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(30),
              )),
          child: Image.asset('assets/icons/homeicon2.png'),
        ),
      ],
    );
  }
}
