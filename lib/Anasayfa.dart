import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
//left - start - leading
//right - end -trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var Ekranbilgisi=MediaQuery.of(context);
    final double ekranyuksekligi=Ekranbilgisi.size.height;
    final double ekrangenisligi=Ekranbilgisi.size.width;
    //print("Ekran Yüksekliği: $ekranyuksekligi",);
    //print("Ekran Genisliği: $ekrangenisligi",);

    var d = AppLocalizations.of(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("PİZZA",style: TextStyle(color: yazirenk1,fontFamily:"Yazistili",fontSize: ekrangenisligi/15),),
        backgroundColor: anarenk,
        centerTitle: true,
      ),
      //Row    için  mainAxisAlignment
      //İKİSİ İÇİNDE ORTAK VE DEĞİŞKENDİR
      //Column için  crossAxisAlignment
      body:Column(
        children: [
          Padding(
            padding:EdgeInsets.all(ekranyuksekligi/43),
            child: Text(d!.pizzabaslik,style:TextStyle(color: anarenk,fontFamily:"Yazistili",fontSize:ekrangenisligi/14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: EdgeInsets.all(ekranyuksekligi/19),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: EdgeInsets.all(ekranyuksekligi/80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buton(icerik:d!.peynir),
                buton(icerik:d!.sucuk),
                buton(icerik: d!.zeytin),
                buton(icerik:d!.biber),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(ekranyuksekligi/75),
                child: Text(d!.sure,style: TextStyle(color: yazirenk2,fontFamily: "Yazistili",fontWeight: FontWeight.bold,fontSize: ekrangenisligi/18),),
              ),
              Text(d!.teslimatbaslik,style: TextStyle(color: anarenk,fontWeight: FontWeight.bold,fontSize: ekrangenisligi/15)),
              Text(d!.teslimataciklama,style: TextStyle(color: yazirenk2,fontSize:ekrangenisligi/15),textAlign: TextAlign.center,)
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(top:ekrangenisligi/7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d!.fiyat,style: TextStyle(color: anarenk,fontSize:ekrangenisligi/12,fontWeight: FontWeight.bold),),
                //BOŞLUK
                const Spacer(),
                //SizedBox: Alt+Enter yaparak boyutunu ayarlamamızı sağlar
                SizedBox(
                  width: ekrangenisligi/2,height:ekranyuksekligi/14,
                  child: TextButton(onPressed: (){},
                      child: Text(d!.butonyazi,style: TextStyle(color: yazirenk1,fontWeight: FontWeight.bold,fontSize: 25)),
                      style: TextButton.styleFrom(
                          backgroundColor: anarenk,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                      ),

                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

//BUTON İÇİN CLASS
class buton extends StatelessWidget {
   String icerik;

  buton({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:(){},
      child:Text(icerik,style: TextStyle(color: yazirenk1,fontFamily:"Yazistili",fontWeight: FontWeight.bold),),
      style: TextButton.styleFrom(backgroundColor: anarenk),
    );
  }
}

