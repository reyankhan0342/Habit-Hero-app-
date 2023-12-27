import 'package:flutter/material.dart';
import 'package:habit_hero_2_app/providers/my_leagus_button_sheet_provider.dart';
import 'package:habit_hero_2_app/screens/dashboard/splash_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyLeagusButtonSheetProvider>(
          create: (_) => MyLeagusButtonSheetProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:SplashScreen(),
      ),
    );



  }
}