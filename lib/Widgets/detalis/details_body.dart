import 'package:e_store/Widgets/detalis/product_image.dart';
import 'package:e_store/models/products.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(size: size, image: product.image, product: product,),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
           product.discription,
             style: const TextStyle(
              fontFamily: "Amiri",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.white
            ),
            ),
        ),
      ],
    );
  }
}