import 'package:flutter/material.dart';
import 'package:bitirme_projesi/colors.dart';
import 'package:bitirme_projesi/entity/categories.dart';

class ShowCategories extends StatefulWidget {
  const ShowCategories({Key? key}) : super(key: key);

  @override
  State<ShowCategories> createState() => _ShowCategoriesState();
}

class _ShowCategoriesState extends State<ShowCategories> {
  Future<List<Categories>> showCategories()async{
    var categoriesList = <Categories>[];

    var c1 = Categories(categoriId: 1, categoriName: "Hepsi");
    var c2 = Categories(categoriId: 2, categoriName: "Hamburger");
    var c3 = Categories(categoriId: 3, categoriName: "Makarna");
    var c4 = Categories(categoriId: 4, categoriName: "Salata");
    var c5 = Categories(categoriId: 5, categoriName: "Kebap");
    var c6 = Categories(categoriId: 6, categoriName: "Kahvaltı");
    var c7 = Categories(categoriId: 7, categoriName: "İçecek");
    var c8 = Categories(categoriId: 8, categoriName: "Tatlı");
    categoriesList.add(c1);
    categoriesList.add(c2);
    categoriesList.add(c3);
    categoriesList.add(c4);
    categoriesList.add(c5);
    categoriesList.add(c6);
    categoriesList.add(c7);
    categoriesList.add(c8);
    return categoriesList;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: FutureBuilder<List<Categories>>(
            future: showCategories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var categoriesList = snapshot.data;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList!.length,
                  itemBuilder: (context, indeks) {
                    var categori = categoriesList[indeks];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("${categori.categoriName}",style: TextStyle(fontFamily: "Roboto-regular"),),
                        style: ElevatedButton.styleFrom(
                            primary: color6,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
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