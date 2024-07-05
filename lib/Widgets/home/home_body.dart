import 'package:e_store/Widgets/product_card.dart';
import 'package:e_store/models/productsList.dart';
import 'package:e_store/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    ProductList products = ProductList();

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(height: 10.0,),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top:70.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)
                    )
                  ),
                ),
                 ListView.builder(
                  itemCount: products.products.length,
                  itemBuilder: (context , index) => ProductCard(
                    itemIndex: index,
                    product: products.products[index],
                    press: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => DetailsScreen(
                          product: products.products[index],
                        ))
                      );
                    }
                  ),
                 ),
              ],
            ),
          ),
        ],
      )
      );
  }
}