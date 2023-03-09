import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  @override
  State<MenuPage> createState() => _MenuPageState();
}
class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children:[
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/me.jpeg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text('Mahmoud Radwan',style: TextStyle(color: Colors.black,fontSize: 18),),
                      SizedBox(
                        height: 20,
                      ),
                      Text('01150331046',style: TextStyle(color: Colors.black,fontSize: 18),)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.transparent,
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
                  Expanded(
                      flex: 2,
                      child: Text('Language',style: TextStyle(color: Colors.black,fontSize: 20),)),
                  Expanded(child: Text('English',style: TextStyle(fontSize:15),)),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
                  Expanded(
                      flex: 2,
                      child: Text('Country ',style: TextStyle(color: Colors.black,fontSize: 20),)),
                  Expanded(child: Text('Egypt',style: TextStyle(fontSize:15),)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 300,
                child: ListView(
                   physics:const BouncingScrollPhysics(),
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Icon(Icons.track_changes,size: 30,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Track order',style: TextStyle(fontSize:20),),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Icon(Icons.reorder,size: 30,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Last Orders',style: TextStyle(fontSize:20),),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Icon(Icons.local_offer,size: 30,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Offers ',style: TextStyle(fontSize:20),),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Icon(Icons.settings,size: 30,),
                          SizedBox(
                            width: 30,
                          ),
                          Text('Setting',style: TextStyle(fontSize:20),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              color:Colors.transparent,
              child: Row(
                children:const [
                 Text('Al Wekala',style: TextStyle(color: Colors.black,fontSize: 25),),
                  
                ],
              ),
            )
        ]
        ),
      )
    );
  }
}
