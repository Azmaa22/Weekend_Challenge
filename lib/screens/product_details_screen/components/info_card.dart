import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
final String title, value;
InfoCard({required this.title, required this.value });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: [
          Text(this.title,style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 10,),
          Text(this.value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),),
        ],
      ),
    );
  }
}
