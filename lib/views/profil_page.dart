import 'package:flutter/material.dart';

import 'package:bitirme_projesi/colors.dart';

import 'giris_sayfa.dart';
//import 'package:bitirme_projesi/giris_sayfa.dart';

class ProfilPage extends StatefulWidget{
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: CircleAvatar(backgroundImage: AssetImage("images/profil.jpg"),maxRadius: 80,),
            ),
            Text("Merhaba",style: TextStyle(fontSize: 24),),
          ],
        )
      ),
      floatingActionButton: floatingActions(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavigations(colors: color6,),
    );


  }
}
