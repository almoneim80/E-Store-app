import 'package:e_store/constants.dart';
import 'package:e_store/models/products.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.itemIndex, required this.product, required this.press,
  });

  final int itemIndex;
  final Product product;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // height + width of the app
    return Container(
      
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const Spacer(),
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26,
                  )
                ]
              ),
            ),
            Positioned(
              top: 5.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                 product.image,
                  fit: BoxFit.cover,
                  ),
            ),
            ),
            Positioned(
              top: 50.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                       product.title,
                        style: const TextStyle(
                          fontFamily: "Amiri",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                       product.subTitle,
                        style: const TextStyle(
                            fontFamily: "Amiri",
                            fontSize: 12.0,
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Text(
                          "السعر: \$${product.price}",
                          style: const TextStyle(
                            fontFamily: "Amiri",
                            fontSize: 15.0,
                          ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
        
            ),
          ],
        ),
      ),
    );
  }
}
