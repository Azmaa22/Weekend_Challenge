import 'package:flutter/material.dart';

import 'components/info_card.dart';
import 'components/top_app_bar.dart';

class ProductDetails extends StatelessWidget {
  final String imageName, planetName, planetPrice;
  ProductDetails(
      {required this.imageName,
      required this.planetName,
      required this.planetPrice});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        //backgroundColor: Color(0xFFFD939D),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFFFD939D),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(size.width * 0.5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        TopAppBar(),
                        Container(
                          width: size.width * 0.5,
                          child: Text(
                            '${this.planetName} Planet',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          '\$ ${this.planetPrice} ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(size.width * 0.4)),
                          child: Image.asset(
                            'assets/images/${this.imageName}.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: Container(
                    width: size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(
                          title: 'Height',
                          value: '40cm - 50cm',
                        ),
                        InfoCard(
                          title: 'Pot',
                          value: 'Self watering pot',
                        ),
                        InfoCard(
                          title: 'Temperature',
                          value: '18  \u2103 to 25 \u2103',
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.6,
                  right: 10,
                  child: GestureDetector(
                    onTap: (){
                      /// add your function
                      print('Item added');
                    },
                    child: Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                          color:Color(0xFFFD939D),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(15),
                          ),),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                             width: 25,
                             height: 25,
                             decoration: BoxDecoration(
                                 color: Colors.white
                                 ,borderRadius: BorderRadius.all(Radius.circular(15))
                             ),
                             child: Icon(Icons.add,color:  Color(0xFFFD939D),)),
                         Text('Add to cart',style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                         ),)
                       ],
                      ),
                    ),
                    ),
                  ),
                )
              ],
            )));
  }
}
