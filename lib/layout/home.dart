import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduate_ui/shared/cubit.dart';
import 'package:graduate_ui/shared/states.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GraduateCubit, GraduateStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = GraduateCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      HexColor('#0d0a2f'),
                      HexColor('#5c40bc'),
                    ]),
                    //color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, bottom: 10, top: 8),
                  child: GNav(
                    tabBorderRadius: 20,
                    gap: 8,
                    backgroundColor: Colors.transparent,
                    color: Colors.white,
                    activeColor: Colors.indigo,
                    tabBackgroundColor: Colors.white,
                    onTabChange: (index) {
                      cubit.changeIndex(index);
                    },
                    padding: const EdgeInsets.all(10),
                    tabs: cubit.tabs,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
