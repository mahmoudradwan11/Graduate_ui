import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduate_ui/models/cate.dart';
import 'package:graduate_ui/models/lap.dart';
import 'package:graduate_ui/models/smart.dart';
import 'package:graduate_ui/models/tap_adv.dart';
import 'package:graduate_ui/modules/cart.dart';
import 'package:graduate_ui/modules/favorite.dart';
import 'package:graduate_ui/modules/product.dart';
import 'package:graduate_ui/modules/profile.dart';
import 'package:graduate_ui/shared/states.dart';
import 'package:hexcolor/hexcolor.dart';

class GraduateCubit extends Cubit<GraduateStates> {
  GraduateCubit() : super(InitState());
  static GraduateCubit get(context) => BlocProvider.of(context);
  List<GButton> tabs =const [
    GButton(icon:Icons.home,text: 'Home',),
    GButton(icon:Icons.category,text: 'Category',),
    GButton(icon:Icons.shopping_cart,text: 'Cart',),
    GButton(icon:Icons.person,text: 'Profile',),
  ];
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeScreenIndex());
  }
  List<Widget> screens =[
    Product(),
    const Favorite(),
    const Cart(),
    const Profile(),
  ];
  List<TapAdvicer>tap = [
    TapAdvicer('Unbelievable Visual & Performance','images/top.png'),
    TapAdvicer('Unbelievable Visual & Performance', 'images/top.png'),
    TapAdvicer('Unbelievable Visual & Performance','images/top.png'),
    TapAdvicer('Unbelievable Visual & Performance', 'images/top.png')
  ];
  List<Cate>cate = [
    Cate('Laptop', 0,'images/lap_cate.png'),
    Cate('Smart phone', 1 ,'images/phone.png'),
    Cate('Smart watch', 2,'images/sma.png'),
  ];
  List<LapTop>laptops = [
    LapTop('Dell G5','New','Dell','images/oman.png','\$1000'),
    LapTop('Apple Mac ','Used','Mac','images/mac.png','\$800'),
    LapTop('Omen O17 ','Used','Hp','images/oman.png','\$700'),
    LapTop('Apple Mac ','New','Mac','images/mac.png','\$2000'),
  ];
  List<Smart>smart=[
    Smart('Smart G5','Used','Dell','images/oman.png','\$300'),
    Smart('Apple Smart ','Used','Mac','images/mac.png','\$200'),
    Smart('Smart O17 ','Used','Hp','images/oman.png','\$400'),
    Smart('Apple  ','New','Mac','images/mac.png','\$2000'),
  ];
  int categoryIndex = 0;
  void change(int cateIndex){
    categoryIndex = cateIndex;
    print(categoryIndex);
    emit(ChangeIndex());
  }
   chooseColor(int index){
    if(cate[index].index == categoryIndex)
    {
         return LinearGradient(colors:[
           HexColor('#2506ff'),
           HexColor('#930c99')
         ]);
    }
    else{
      return LinearGradient(colors: [
        HexColor('#bebdc6'),
        HexColor('#859190'),
      ]);
    }
  }
}