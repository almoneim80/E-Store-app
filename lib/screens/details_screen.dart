import 'package:e_store/Widgets/detalis/details_body.dart';
import 'package:e_store/constants.dart';
import 'package:e_store/models/products.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }




  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: 30.0),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text(
        "رجوع",
        style: TextStyle(
          fontFamily: "Amiri",
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
