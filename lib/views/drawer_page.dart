import 'package:bitirme_projesi/views/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_projesi/colors.dart';
import 'package:bitirme_projesi/views/giris_sayfa.dart';
import 'package:bitirme_projesi/views/landing_page.dart';
//import 'package:bitirme_projesi/views/location_page.dart';
import 'package:bitirme_projesi/views/profil_page.dart';


class DrawerPage extends StatefulWidget {

  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}
class _DrawerPageState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {

    return Drawer(
       // backgroundColor: color4,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: color6,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilPage()));
                    },child: CircleAvatar(backgroundImage: AssetImage("images/profil.jpg"),maxRadius: 28,)),
                    Text("Hoşgeldiniz!", style: TextStyle(color: color2, fontWeight: FontWeight.bold, fontSize: 20),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GirisSayfa()));
              },
              child: drawerItems(
                  icons: Icon(
                    Icons.home,
                    color: color3,
                    size: 26,
                  ),
                  text: 'Ana Sayfa'),
            ),
            drawerItems(
                icons: Icon(
                  Icons.settings,
                  color: color3,
                  size: 26,
                ),
                text: 'Ayarlar'),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Anasayfa()));
              },
              child: drawerItems(
                  icons: Icon(
                    Icons.location_on_rounded,
                    color: color3,
                    size: 26,
                  ),
                  text: 'Konumum'),
            ),
            drawerItems(
                icons: Icon(
                  Icons.notifications,
                  color: color3,
                  size: 26,
                ),
                text: 'Bildirimler'),
            drawerItems(
                icons: Icon(
                  Icons.question_mark_rounded,
                  color: color3,
                  size: 26,
                ),
                text: 'Yardım'),
            SizedBox(height: 180),
            GestureDetector(
              onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
              child: drawerItems(
                  icons: Icon(
                    Icons.login_rounded,
                    color: color3,
                    size: 26,
                  ),
                  text: 'Çıkış Yap'),
            ),
          ],
        ));
  }
}

class drawerItems extends StatelessWidget {
  const drawerItems({
    Key? key,
    required this.icons,
    required this.text,
  }) : super(key: key);

  final Icon icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: icons,
          ),
          Text(
            text,
            style: TextStyle(color: color3, fontSize: 14,fontFamily: "Poppins-600"),
          ),
        ],
      ),
    );
  }
}
