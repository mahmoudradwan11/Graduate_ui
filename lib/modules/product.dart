import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:graduate_ui/models/cate.dart';
import 'package:graduate_ui/models/lap.dart';
import 'package:graduate_ui/models/smart.dart';
import 'package:graduate_ui/models/tap_adv.dart';
import 'package:graduate_ui/shared/cubit.dart';
import 'package:graduate_ui/shared/states.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Product extends StatelessWidget {
  Product({Key? key}) : super(key: key);
  var smoothController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GraduateCubit, GraduateStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = GraduateCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading:IconButton(
                  onPressed: (){
                    ZoomDrawer.of(context)!.toggle();
                  },
                  icon:const Icon(Icons.menu),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const[
                    Text('El',style: TextStyle(color: Colors.red,),),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Weka',style: TextStyle(color: Colors.black),),
                    SizedBox(width: 1,),
                    Text('la',style: TextStyle(color: Colors.indigo),)
                  ],
                ),
                actions:const [
                   Padding(
                    padding: EdgeInsets.only(left: 20.0,right: 20),
                    child: Icon(Icons.search_rounded,size: 30,),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: PageView.builder(
                          itemBuilder: (context, index) =>
                              buildAdvicer(cubit.tap[index]),
                          itemCount: cubit.tap.length,
                          controller: smoothController,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SmoothPageIndicator(
                          controller: smoothController,
                          count: cubit.tap.length,
                          effect: const ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 9,
                            // strokeWidth: 5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 90,
                        child: ListView.separated(
                          shrinkWrap:true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder:(context,index)=>buildCateItem(cubit.cate[index], index,context),
                            separatorBuilder:(context,index)=>const SizedBox(
                              width: 5,
                            ),
                            itemCount:cubit.cate.length
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          children:[
                            const Text('popular product',style: TextStyle(fontSize: 20),),
                            const Spacer(),
                            MaterialButton(onPressed:(){},child:const Text('see All',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                            ),
                            ),
                            )
                          ],
                        ),
                      ),
                      if(cubit.categoryIndex==0)
                       Container(
                        height: 230,
                        child: ListView.separated(
                            shrinkWrap:true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder:(context,index)=>buildLaptopItem(cubit.laptops[index]),
                            separatorBuilder:(context,index)=>const SizedBox(
                              width: 0,
                            ),
                            itemCount:cubit.laptops.length
                        ),
                      ),
                      if(cubit.categoryIndex==1)
                        Container(
                          height: 230,
                          child: ListView.separated(
                              shrinkWrap:true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index)=>buildSmartItem(cubit.smart[index]),
                              separatorBuilder:(context,index)=>const SizedBox(
                                width:0,
                              ),
                              itemCount:cubit.smart.length
                          ),
                        ),
                      if(cubit.categoryIndex==2)
                        Container(
                          height: 230,
                          child: ListView.separated(
                              shrinkWrap:true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index)=>buildLaptopItem(cubit.laptops[index]),
                              separatorBuilder:(context,index)=>const SizedBox(
                                width:0,
                              ),
                              itemCount:cubit.laptops.length
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          children:[
                            const Text('Newest Product',style: TextStyle(fontSize: 20),),
                            const Spacer(),
                            MaterialButton(onPressed:(){},child:const Text('see All',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15
                            ),
                            ),
                            )
                          ],
                        ),
                      ),
                      if(cubit.categoryIndex==0)
                        Container(
                          height: 230,
                          child: ListView.separated(
                              shrinkWrap:true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index)=>buildLaptopItem(cubit.laptops[index]),
                              separatorBuilder:(context,index)=>const SizedBox(
                                width: 0,
                              ),
                              itemCount:cubit.laptops.length
                          ),
                        ),
                      if(cubit.categoryIndex==1)
                        Container(
                          height: 230,
                          child: ListView.separated(
                              shrinkWrap:true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index)=>buildSmartItem(cubit.smart[index]),
                              separatorBuilder:(context,index)=>const SizedBox(
                                width:0,
                              ),
                              itemCount:cubit.smart.length
                          ),
                        ),
                      if(cubit.categoryIndex==2)
                        Container(
                          height: 230,
                          child: ListView.separated(
                              shrinkWrap:true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context,index)=>buildLaptopItem(cubit.laptops[index]),
                              separatorBuilder:(context,index)=>const SizedBox(
                                width:0,
                              ),
                              itemCount:cubit.laptops.length
                          ),
                        ),
                      ],
                  ),
                ),
              ));
        });
  }
}
