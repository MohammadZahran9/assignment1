
import 'package:assignment1/controllers/PageController/modrenchaircontroller.dart';
import 'package:assignment1/controllers/PageController/bar.dart';
import 'package:assignment1/views/home.dart';
import 'package:assignment1/views/screens/recommendedItems/diningChair.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> barmodel()),
        ChangeNotifierProvider(create: (context)=> chairController()),


      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Home(),
        routes: {
          "Modren Dining Chair" :(context) => const diningChair(),
          "Home" :(context) => const Home(),
          
        },
      ),
    );
  }
}