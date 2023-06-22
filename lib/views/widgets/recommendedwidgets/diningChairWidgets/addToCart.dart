import 'package:flutter/material.dart';

class cartDiningChair extends StatelessWidget {
  const cartDiningChair({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("|", style: TextStyle(fontSize: 20)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text("\$170.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            )
          ],
        ),
      ),
    );
  }
}
