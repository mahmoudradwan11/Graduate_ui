import 'package:flutter/material.dart';
import 'package:graduate_ui/shared/cubit.dart';

class Cate{
  String title;
  int index;
  String image;
  Cate(this.title,this.index,this.image);
}
Widget buildCateItem(Cate cate,index,context)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child:   InkWell(
    onTap:(){
      GraduateCubit.get(context).change(index);
    },
    child: Container(
      decoration: BoxDecoration(
        gradient:GraduateCubit.get(context).chooseColor(index),
        borderRadius: BorderRadius.circular(10)
      ),
      width:200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image:AssetImage(cate.image),height: 50,width: 50,fit: BoxFit.contain,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(cate.title,style: const TextStyle(color:Colors.white,fontSize: 15)),
                    const SizedBox(
                      height: 3,
                    ),
                    Text('100 product',style: TextStyle(color: Colors.indigo[300]),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ),
);