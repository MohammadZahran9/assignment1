import 'package:assignment1/controllers/PageController/bar.dart';
import 'package:assignment1/views/screens/navigationBar/homepage.dart';
import 'package:assignment1/views/screens/navigationBar/page2.dart';
import 'package:assignment1/views/screens/navigationBar/checkout.dart';
import 'package:assignment1/views/screens/navigationBar/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Badge(
              child: GestureDetector(
                onTap: () {
                  print("Omar");
                },
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Consumer<barmodel>(builder: (context, mzz, child) {
        return _getPage(mzz.currentIndex);
      }),
      bottomNavigationBar: Consumer<barmodel>(
        builder: (context, mzz, child) {
          return BottomNavigationBar(
            currentIndex: mzz.currentIndex,
            onTap: (index) {
              mzz.updateIndex(index);
            },
            selectedItemColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(),
            items: [
              BottomNavigationBarItem(
                  icon: mzz.currentIndex == 0
                      ? const Icon(
                          Icons.home,
                        )
                      : const Icon(Icons.home_outlined),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_box_outlined,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  label: ""),
            ],
          );
        },
      ),
    ));
  }

  Widget _getPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const page2();
      case 2:
        return const Checkout();
      case 3:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
