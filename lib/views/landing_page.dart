import 'package:bitirme_projesi/colors.dart';
import 'package:bitirme_projesi/views/giris_sayfa.dart';
import 'package:flutter/material.dart';

import 'anasayfa.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 300,
                height: 300,
                child: Image.asset("images/afiyetskahve.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const GirisSayfa()));
                    },
                    child: const Text("Gezinmeye Başlayın",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        primary: color2,
                        elevation: 3,
                        shape:const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        padding: EdgeInsets.all(20) //content),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
