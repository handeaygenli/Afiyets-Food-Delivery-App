import 'package:bitirme_projesi/views/anasayfa.dart';
import 'package:bitirme_projesi/views/sepet_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_projesi/colors.dart';
//import 'package:foodie/views/cart_page.dart';
import 'package:bitirme_projesi/views/drawer_page.dart';
import 'package:bitirme_projesi/views/profil_page.dart';
import 'package:bitirme_projesi/views/search_page.dart';
import 'package:bitirme_projesi/views/show_categories.dart';
import 'package:bitirme_projesi/views/show_choices.dart';
import 'package:bitirme_projesi/views/show_populars.dart';


class GirisSayfa extends StatefulWidget {
  const GirisSayfa({Key? key}) : super(key: key);

  @override
  State<GirisSayfa> createState() => _GirisSayfaState();
}

class _GirisSayfaState extends State<GirisSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color6,
        iconTheme: IconThemeData(color: anaRenk),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.favorite_border_rounded)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 0.1, bottom: 5, left: 5, right: 5),
                  child: Card(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Icon(
                                Icons.search_rounded,
                                color: color2,
                                size: 30,
                              ),
                            ),
                            Text(
                              "Aramaya başla...",
                              style: TextStyle(color: color2,fontSize: 16, fontStyle: FontStyle.italic),
                            )
                          ],
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              ShowCategories(),
              SizedBox(height: 12),
              mainText(text: "Sizin için seçilenler"),
              ShowChoices(),
              SizedBox(height: 6),
              mainText(text: "En çok tercih edilenler"),
              ShowPopulars(),
            ]),
      ),
      floatingActionButton: floatingActions(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigations(colors: color6),
      drawer: const DrawerPage(),
    );
  }
}

class floatingActions extends StatelessWidget {
  const floatingActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GirisSayfa()));},
      child: Icon(
        Icons.home,
        color: anaRenk,
      ),
      backgroundColor: color2,
    );
  }
}

class bottomNavigations extends StatelessWidget {
  final Color colors;

  bottomNavigations({required this.colors});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: colors,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerPage()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
              icon: Icon(Icons.restaurant),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: IconButton(
              icon: Icon(Icons.shopping_basket_rounded),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SepetSayfa()));
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.person_pin),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilPage()));
            },
          ),
        ],
      ),
    );
  }
}

class mainText extends StatelessWidget {
  final String text;


  mainText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: color2),
          ),
          Text("Tümünü Gör",style: TextStyle(color: color5),)
        ],
      ),
    );
  }
}