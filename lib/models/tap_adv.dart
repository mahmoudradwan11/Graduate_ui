import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TapAdvicer {
  String title;
  String image;
  TapAdvicer(this.title, this.image);
}
Widget buildAdvicer(TapAdvicer tapAdvicer) => Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(
            width: double.infinity,
            //height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  HexColor('#0d0a2f'),
                  HexColor('#5c40bc'),
                ]
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ZedBook Pro',style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 14
                  ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: Text(
                      tapAdvicer.title,
                      style: const TextStyle(
                        color: Colors.white,
                      fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          HexColor('#2506ff'),
                          HexColor('#930c99'),
                          HexColor('#ee10b2'),
                          HexColor('#d2c90e')
                        ]
                      )
                    ),
                    width: 100,
                    child: MaterialButton(
                      onPressed:(){},
                      child:const Text('Buy Now',style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right:-25,
          top:-20,
          child: Image(
            image:AssetImage(tapAdvicer.image),height:260),
        ),
      ],
    );