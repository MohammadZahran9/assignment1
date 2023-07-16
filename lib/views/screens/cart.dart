import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed("Home");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        actions: [
          const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Badge(
              child: GestureDetector(
                onTap: () {
                  print("O");
                },
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
