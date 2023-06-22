import 'package:flutter/material.dart';
import '../../widgets/recommendedwidgets/diningChairWidgets/addToCart.dart';
import '../../widgets/recommendedwidgets/diningChairWidgets/colors.dart';
import '../../widgets/recommendedwidgets/diningChairWidgets/pic.dart';
import '../../widgets/recommendedwidgets/diningChairWidgets/rates.dart';
import '../../widgets/recommendedwidgets/diningChairWidgets/removeAndadd.dart';

class diningChair extends StatelessWidget {
  const diningChair({super.key});

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
          ]),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              const picsOfchair(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        height: 4,
                        width: 70,
                        color: Colors.grey,
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Modren Dining Chair",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ratesOfchair(),
              const colorsOfchair(),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "The velvet pleated back dining chair with slant \n forearms descended from its oozing shape.\n Distinguish has a sturdy",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [removeAndAdd(), cartDiningChair()],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
