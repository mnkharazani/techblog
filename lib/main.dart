import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech/app.dart';
import 'package:tech/splash_screen.dart';

void main() {
  
   
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // farsi
      ],
      title: 'Flutter Demo',
     theme: ThemeData(
       
        textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontFamily: "Shabnam",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black),
            displayMedium: TextStyle(
                fontFamily: "Shabnam",
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.black),
            headlineMedium: TextStyle(
                fontFamily: "Shabnam",
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.white),
            headlineSmall: TextStyle(
                fontFamily: "Shabnam",
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.red),
            headlineLarge: TextStyle(
                fontFamily: "Shabnam",
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.green),
      )
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return SplashScreen();
    
  }
   }

