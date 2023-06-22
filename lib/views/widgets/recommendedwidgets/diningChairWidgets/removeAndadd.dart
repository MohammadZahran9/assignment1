import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/PageController/modrenchaircontroller.dart';

class removeAndAdd extends StatelessWidget {
  const removeAndAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<chairController>(
      builder: (context, val, child) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 50,
            width: 115,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              GestureDetector(
                onTapDown: (i) {
                  val.removenum();
                  val.pressed();
                },
                onTapUp: (i) {
                  val.pressed();
                },
                onTapCancel: () {
                  val.pressed();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: val.ispressed ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  margin: const EdgeInsets.only(left: 10),
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.remove,
                    color: val.ispressed ? Colors.white : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("${val.num}"),
              ),
              GestureDetector(
                onTapDown: (i) {
                  val.addnum();
                  val.pressedadd();
                },
                onTapUp: (i) {
                  val.pressedadd();
                },
                onTapCancel: () {
                  val.pressedadd();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: val.addpressed ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  margin: const EdgeInsets.only(left: 10),
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.add,
                    color: val.addpressed ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
