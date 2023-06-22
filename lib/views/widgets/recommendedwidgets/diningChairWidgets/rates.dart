import 'package:flutter/material.dart';

class ratesOfchair extends StatelessWidget {
  const ratesOfchair({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.only(right: 10),
          child: const Text(
            "4.3",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
                fontSize: 17),
          ),
        ),
        const Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellowAccent,
        ),
        const Icon(
          Icons.star_half,
          color: Colors.yellowAccent,
        ),
        const Text(
          "  (137 Reviews)",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
