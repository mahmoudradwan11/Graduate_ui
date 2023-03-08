import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduate_ui/shared/cubit.dart';
import 'package:graduate_ui/shared/states.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GraduateCubit, GraduateStates>(
        listener: (context, state) {},
        builder: (context, state){
          return  Scaffold(
            appBar: AppBar(
              title:const Text('Profile'),
            ),
            body:const Center(
              child: Text(
                  'Profile'
              ),
            ),
          );
        }
    );
  }
}
