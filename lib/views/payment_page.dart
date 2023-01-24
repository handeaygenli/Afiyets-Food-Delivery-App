import 'package:flutter/material.dart';
import 'package:bitirme_projesi/colors.dart';
import 'onay_sayfa.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int radioDeger1 =0;
  int radioDeger2 =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        backgroundColor: color6,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: anaRenk,
            )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Ödeme Seçenekleri", style: TextStyle(color: anaRenk,fontSize: 18, fontWeight: FontWeight.bold),),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Container(
                        width: 350,
                        height: 180,
                        color: color7,
                        child: Column(
                          children: [
                           RadioListTile(
                             title: Text("Kart ile Öde",style: TextStyle(color: anaRenk, fontWeight: FontWeight.bold, fontSize: 16),),
                               value: 1,
                               groupValue: radioDeger1,
                               activeColor: anaRenk,
                               onChanged: (int? veri){
                               setState((){
                                 radioDeger1=veri!;
                               });
                               }
                               ),
                            RadioListTile(
                             title: Text("Kapıda Nakit Öde", style: TextStyle(color: anaRenk, fontWeight: FontWeight.bold, fontSize: 16),),
                               value: 2,
                               groupValue: radioDeger1,
                               activeColor: anaRenk,
                               onChanged: (int? veri){
                               setState((){
                                 radioDeger1=veri!;
                               });
                               }
                               ),
                            RadioListTile(
                             title: Text("Kapıda Kart ile Öde", style: TextStyle(color: anaRenk, fontWeight: FontWeight.bold, fontSize: 16),),
                               value: 3,
                               groupValue: radioDeger1,
                               activeColor: anaRenk,
                               onChanged: (int? veri){
                               setState((){
                                 radioDeger1=veri!;
                               });
                               }
                               ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Teslimat Saati", style: TextStyle(color: anaRenk,fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Container(
                        width: 350,
                        height: 120,
                        color: color7,
                        child: Column(
                          children: [
                            RadioListTile(
                                title: Text("Hemen Gelsin", style: TextStyle(color: anaRenk,fontSize: 18, fontWeight: FontWeight.bold),),
                                value: 1,
                                groupValue: radioDeger2,
                                activeColor: anaRenk,
                                onChanged: (int? veri){
                                  setState((){
                                    radioDeger2=veri!;
                                  });
                                }
                            ),
                            RadioListTile(
                                title: Text("18:00-20.00", style: TextStyle(color: anaRenk,fontSize: 18, fontWeight: FontWeight.bold),),
                                value: 2,
                                groupValue: radioDeger2,
                                activeColor: anaRenk,
                                onChanged: (int? veri){
                                  setState((){
                                    radioDeger2=veri!;
                                  });
                                }
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,top: 24),
                      child: Text("Not: ",style: TextStyle(color: anaRenk,fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(),
                    ),
                    SizedBox(height: 18),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OnaySayfa() ));
                        },
                        child:
                        Text("Sepeti Onayla",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                        ),style: ElevatedButton.styleFrom(primary: anaRenk),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

