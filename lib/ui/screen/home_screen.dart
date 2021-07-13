import 'package:flutter/material.dart';
import 'package:flutter_app54/ui/model/AppRouter.dart';
import 'package:flutter_app54/ui/screen/scound_screen.dart';

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: Text('next'),

            onPressed: () async{
              AppRouter.router.pushFunction(ScoundScreen());
            },
          ),
        ),
      ),
    );
  }

}