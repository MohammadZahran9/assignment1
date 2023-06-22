import 'package:flutter/material.dart';

class colorsOfchair extends StatelessWidget {
  const colorsOfchair({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.only(right: 5, top: 5),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFFF5F5DC),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.only(right: 5, top: 5),
          child: GestureDetector(
            onTap: () {
              
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.only(right: 5, top: 5),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
