import 'package:bitirme_projesi/colors.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_projesi/entity/populars.dart';

class ShowPopulars extends StatefulWidget {
  const ShowPopulars({Key? key}) : super(key: key);

  @override
  State<ShowPopulars> createState() => _ShowPopularsState();
}

class _ShowPopularsState extends State<ShowPopulars> {
  Future<List<Populars>> ShowPopulars() async {
    var popularsList = <Populars>[];

    var p1 = Populars(popularId: 1, popularImageName: "yemek2.jpg",popularName: "Köfte");
    var p2 = Populars(popularId: 2, popularImageName: "yemek3.jpg",popularName: "Pizza");
    var p3 = Populars(popularId: 3, popularImageName: "yemek4.jpg",popularName: "Makarna");
    var p4 = Populars(popularId: 4, popularImageName: "yemek5.jpg",popularName: "Noodle");
    var p5 = Populars(popularId: 4, popularImageName: "yemek6.jpg",popularName: "Taco");
    var p6 = Populars(popularId: 4, popularImageName: "yemek7.jpg",popularName: "Baklava");

    popularsList.add(p1);
    popularsList.add(p2);
    popularsList.add(p3);
    popularsList.add(p5);
    popularsList.add(p4);
    popularsList.add(p6);

    return popularsList;}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: FutureBuilder<List<Populars>>(
            future: ShowPopulars(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var popularsList = snapshot.data;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularsList!.length,
                  itemBuilder: (context, indeks) {
                    var popular = popularsList[indeks];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 180,
                          child: Card(
                            elevation: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width:120,
                                  height: 132,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: color1,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("images/${popular.popularImageName}",),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 22),
                                  child: Center(
                                      child: Text(
                                        popular.popularName,
                                        style:
                                        const TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.bold,),
                                        maxLines: 2,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],

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