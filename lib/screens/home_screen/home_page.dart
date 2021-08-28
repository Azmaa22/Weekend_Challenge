import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets_challenge/models/product_model.dart';
import 'package:planets_challenge/screens/home_screen/componets/product_card.dart';
import 'package:planets_challenge/screens/product_details_screen/product_details.dart';

import 'componets/side_menu_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<ProductModel> products = [
      ProductModel(
        imageName: 'flower1',
        planetName: 'House Shape Close',
        planetPrice: '45',
      ),
      ProductModel(
        imageName: 'flower2',
        planetName: 'Glass Water',
        planetPrice: '45',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                  top: size.height * 0.04,
                  right: 8,
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    iconSize: 35.0,
                    onPressed: () {},
                  )),
              Container(
                width: size.width * 0.25,
                height: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFFEF4F3)),
                child: SideMenuBar(),
              ),
              Positioned(
                top: size.height * 0.1,
                left: size.width * 0.08,
                child: Text(
                  'Planets',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.150,
                left: size.width * 0.35,
                child: Container(
                  width: size.width * 0.5,
                  color: Colors.white,

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        imageName: 'flower1',
                                        planetName: 'House Shape Close',
                                        planetPrice: '45',
                                      )),
                            );
                          },
                          child: ProductCard(
                            imageName: 'flower1',
                            planetName: 'House Shape Close',
                            planetPrice: '45',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        imageName: 'flower2',
                                        planetName: 'Glass Water',
                                        planetPrice: '45',
                                      )),
                            );
                          },
                          child: ProductCard(
                            imageName: 'flower2',
                            planetName: 'Glass Water',
                            planetPrice: '45',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
