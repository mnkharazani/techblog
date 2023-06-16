import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Image.asset("assets/images/icon.png"),
         //Text("سلام به همگی",style: Theme.of(context).textTheme.displayLarge,),
      ),
    );
    
  }
   }

