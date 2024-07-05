import 'package:e_store/Widgets/home/home_body.dart';
import 'package:e_store/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor, 
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: const Text(
        "المتجر الألكتروني",
        style: TextStyle(fontFamily: "Amiri",
        color: Colors.white),
      ),
      actions:  [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu,
          color: Colors.white,),
        ),
      ],
    );
  }
}
