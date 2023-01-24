import 'package:flutter/material.dart';
import 'package:bitirme_projesi/entity/choices.dart';

class ShowChoices extends StatefulWidget {
  const ShowChoices({Key? key}) : super(key: key);

  @override
  State<ShowChoices> createState() => _ShowChoicesState();
}

class _ShowChoicesState extends State<ShowChoices> {
  Future<List<Choices>> showChoices() async {
    var choicesList = <Choices>[];

    var sc1 = Choices(choiceId: 1, choiceImageName: "yemek1.jpg");
    var sc2 = Choices(choiceId: 2, choiceImageName: "yemek9.jpg");
    var sc3 = Choices(choiceId: 3, choiceImageName: "yemek10.jpg");
    var sc4 = Choices(choiceId: 4, choiceImageName: "yemek8.jpg");
    choicesList.add(sc1);
    choicesList.add(sc2);
    choicesList.add(sc3);
    choicesList.add(sc4);
    return choicesList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: FutureBuilder<List<Choices>>(
            future: showChoices(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var choicesList = snapshot.data;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: choicesList!.length,
                  itemBuilder: (context, indeks) {
                    var choice = choicesList[indeks];
                    return Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "images/${choice.choiceImageName}")),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                    );
                  },
                );
              } else {
                return const Center();
              }
            },
          )),
    );
  }
}
