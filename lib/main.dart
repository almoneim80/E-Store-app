import 'package:e_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_store/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "متجر الكتروني", 
    theme: ThemeData(
      primaryColor: kPrimaryColor,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Amiri'),
        
      ),
    ),
    localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale("ar" , "AE")],
            locale: const Locale("ar" , "AE"),


    home: const HomeScreen(),
  );
}
}