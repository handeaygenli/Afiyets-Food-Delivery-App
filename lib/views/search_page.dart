import 'package:bitirme_projesi/views/detay_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bitirme_projesi/colors.dart';
import 'package:bitirme_projesi/cubit/anasayfa_cubit.dart';
import 'package:bitirme_projesi/entity/yemekler.dart';
import 'package:bitirme_projesi/views/anasayfa.dart';

class  SearchPage extends StatefulWidget {
  const  SearchPage({Key? key}) : super(key: key);

  @override
  State< SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State< SearchPage> {
  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color6,
          title: aramaYapiliyorMu ?
          TextField(
            decoration:
            const InputDecoration(hintText: "Aramaya başla",),
            style: TextStyle(color: Colors.white),
            onChanged: (aramaSonucu){
            context.read<AnasayfaCubit>().search(aramaSonucu);
            },)
              :  Text("Yemekler",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          actions: [
            aramaYapiliyorMu ?
            IconButton(onPressed: () {
              setState(() {aramaYapiliyorMu= false;});
              context.read<AnasayfaCubit>().yemekleriAlCubit();
            }, icon: Icon(Icons.clear)) :
            IconButton(onPressed: () {
              setState(() {aramaYapiliyorMu= true;});
            }, icon: Icon(Icons.search))
          ],
      ),
      body: BlocBuilder<AnasayfaCubit,List<Yemekler>>(
          builder: (context,yemeklerListesi){
            if(yemeklerListesi.isNotEmpty){
              return ListView.builder(
                  itemCount: yemeklerListesi.length,
                  itemBuilder: (context,indeks){
                    var yemek= yemeklerListesi[indeks];
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetaySayfa(
                                 yemek: yemek,
                                ))).then((value) {
                          context.read<AnasayfaCubit>().yemekleriAlCubit();
                        });
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${yemek.yemek_adi}"),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              );
            }else{
              return const Center();
            }
          }
      )  ,
    );
  }
}
