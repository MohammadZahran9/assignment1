import 'package:flutter/material.dart';

import '../../../controllers/static/static.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search furniture",
                  fillColor: Colors.grey[300],
                  filled: true,
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: InputBorder.none),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Recommended"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 340,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listone.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.of(context)
                              .pushNamed("Modren Dining Chair");
                        } else if (index == 1) {
                          // Navigator.of(context).pushNamed();
                        }
                      },
                      child: Card(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      listone[index].title!,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    color: Colors.yellow,
                                    child: const Text(
                                      "NEW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Text(
                                  listone[index].price!,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              Image.asset(
                                listone[index].image!,
                                height: 250,
                                width: 280,
                                fit: BoxFit.contain,
                              )
                            ],
                          )),
                    );
                  }),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text("Recently viewed"),
              ),
            ],
          ),
          SizedBox(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listtwo.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(
                      listtwo[i].title!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(listtwo[i].dis!),
                    trailing: Text(
                      listtwo[i].price!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Image.asset(
                      listtwo[i].image!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
