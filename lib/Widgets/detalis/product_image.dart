import 'package:e_store/Widgets/detalis/color_dot.dart';
import 'package:e_store/constants.dart';
import 'package:e_store/models/products.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image, required this.product,
  });

final Product product;
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      decoration: const BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: size.width - 8.0,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: size.width - 0.7,
                  width: size.width - 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Image.asset(
                  image,
                  height: size.width - 0.75,
                  width: size.width - 0.75,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const Dots(),
           Text(
           product.title,
            style: const TextStyle(
              fontFamily: "Amiri",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),  
          ),
         Text(
            "السعر: \$${product.price}",
            style: const TextStyle(
              fontFamily: "Amiri",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
