import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../controllers/PageController/modrenchaircontroller.dart';
import '../../../../controllers/static/detail.dart';

class picsOfchair extends StatelessWidget {
  const picsOfchair({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 340,
          child: Consumer<chairController>(builder: (context, val, child) {
            return SizedBox(
              height: 340,
              width: double.infinity,
              child: PageView.builder(
                  controller: val.pageController,
                  onPageChanged: (value) {
                    val.setcurrentpageindex(value);
                  },
                  itemCount: modernchair.length,
                  itemBuilder: (context, i) {
                    return Image.asset(
                      modernchair[i].image!,
                      fit: BoxFit.fill,
                    );
                  }),
            );
          }),
        ),
        Positioned(
          top: 320,
          left: 100,
          child: Consumer<chairController>(builder: (context, val, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    modernchair.length,
                    (index) => GestureDetector(
                          onTap: () {
                            val.goToPage(index);
                          },
                          child: AnimatedContainer(
                            margin: const EdgeInsets.only(right: 5),
                            duration: const Duration(milliseconds: 900),
                            width: 90,
                            height: 3,
                            decoration: BoxDecoration(
                              color: val.currentpageindex == index
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ))
              ],
            );
          }),
        ),
      ],
    );
  }
}
