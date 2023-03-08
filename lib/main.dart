import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduate_ui/shared/bloc_observer.dart';
import 'package:graduate_ui/shared/cubit.dart';
import 'package:graduate_ui/shared/states.dart';
import 'package:graduate_ui/shared/theme/theme.dart';
import 'layout/home.dart';
void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GraduateCubit(),
      child: BlocConsumer<GraduateCubit, GraduateStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
               title:'Graduate',
               debugShowCheckedModeBanner: false,
               home: const Home(),
              theme: lightTheme,
            );
          }
      ),
    );
  }
}
