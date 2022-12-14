import 'package:flutter/material.dart';
import 'package:week2dped_assignment/common/styles.dart';

import 'package:week2dped_assignment/views/pages.dart';

import 'model/buah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: Theme.of(context)!.colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: secondaryColor,
              secondary: secondaryColor),
          appBarTheme: AppBarTheme(elevation: 0),
          scrollbarTheme: const ScrollbarThemeData()
              .copyWith(thumbColor: MaterialStateProperty.all(primaryColor)),
          textTheme: myTextTheme),
      initialRoute: MainContent.routeNames,
      routes: {
        MainContent.routeNames: (context) => MainContent(),
        FormPage.routeNames: (context) => FormPage()
      },
    );
  }
}
