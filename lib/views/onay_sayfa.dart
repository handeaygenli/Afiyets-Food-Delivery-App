import 'package:bitirme_projesi/views/anasayfa.dart';
import 'package:bitirme_projesi/views/giris_sayfa.dart';
import 'package:flutter/material.dart';

import 'package:bitirme_projesi/colors.dart';

class OnaySayfa extends StatefulWidget {
  const OnaySayfa({Key? key}) : super(key: key);

  @override
  State<OnaySayfa> createState() => _OnaySayfaState();
}

class _OnaySayfaState extends State<OnaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/thankyou.png"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: anaRenk),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GirisSayfa()));
                },
                child:
                const Text("Anasayfaya dön"),
            ),

          ],
        ),
      ),
    );
  }
}