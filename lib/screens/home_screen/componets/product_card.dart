import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageName, planetName, planetPrice;
  ProductCard({required this.imageName, required this.planetName, required this.planetPrice});
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/${this.imageName}.png',
          fit: BoxFit.cover,
        ),

        Text(
          this.planetName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text('Sed ut perspiciatis unde\nomnis iste natus naror sit voluptatem ....',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
          ),),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$ ${this.planetPrice} ',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),

            Image.asset('assets/icons/basket icon.png',scale: 2,),

          ],
        ),
      ],
    );
  }
}
