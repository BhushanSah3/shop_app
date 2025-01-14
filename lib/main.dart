import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/homepage.dart';

import 'Providers/cart_provider.dart';



void main() {
  runApp(const MyApp());
}
// provider types : provider, changenotifierprovider, futureprovider, Streamprovider
//multiprovider, proxy provider
 
// providers:provdies data to widgets below to its widget tree
// ChangeNotifierProvider()
//  wrapping with consumer widget with the return datatype helps in consumer rebuild 
//context .watch should be used whwnever all child widgets need a certain value


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=> CardProvider(),

      child: MaterialApp(
        title: "Shopping App",
        theme: ThemeData(
          fontFamily: "Lato",
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(
                254, 206, 1, 1), // this if for building stuffs for me
      
            primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          )),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            titleSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          useMaterial3: true,
        ),
      debugShowCheckedModeBanner: false,

      // theme: ThemeData.light(useMaterial3: true).copyWith(
      //   appBarTheme: const AppBarTheme()
      // ),

        home: const Homepage(
        ),
        
      ),
    );
  }
}