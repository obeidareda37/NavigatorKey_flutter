import 'package:flutter/material.dart';
import 'package:flutter_app54/ui/model/AppRouter.dart';
import 'package:flutter_app54/ui/screen/error_screen.dart';
import 'package:flutter_app54/ui/screen/home_screen.dart';
import 'package:flutter_app54/ui/screen/register_screen.dart';
import 'package:flutter_app54/ui/screen/scound_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppRouter.router.navKey,
      routes: {
        // 'home': (context)=> HomeScreen(),
        // 'scound':(context)=>ScoundScreen(),
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        String name = routeSettings.name;
        var arguments = routeSettings.arguments;
        switch(name){
          case ('home'):
            return MaterialPageRoute(builder: (context) {
              return HomeScreen();
            });
          case('register'):
            return MaterialPageRoute(builder: (context) {
              return RegisterScreen();
            });

          default:
            return MaterialPageRoute(builder: (context) {
              return ErrorScreen();
            });
        }},
      onUnknownRoute:(RouteSettings route){
        return MaterialPageRoute(builder: (context) {
          return ErrorScreen();
        });
      },
      //   if (name == 'home') {
      //     return MaterialPageRoute(builder: (context) {
      //       return HomeScreen();
      //     });
      //   } else if (name == 'scound') {
      //     return MaterialPageRoute(builder: (context) {
      //       return ScoundScreen();
      //     });
      //   } else if (name == 'register') {
      //     return MaterialPageRoute(builder: (context) {
      //       return RegisterScreen();
      //     });
      //   } else {
      //     return MaterialPageRoute(builder: (context) {
      //       return ErrorScreen();
      //     });
      //   }
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
