import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarcopenia_project/Perfil.dart';
import 'package:sarcopenia_project/home.dart';
import 'package:sarcopenia_project/modelos/ButtonState.dart';
import 'package:sarcopenia_project/perg/Perg1.dart';
import 'package:sarcopenia_project/perg/Perg2.dart';
import 'package:sarcopenia_project/perg/Perg3.dart';
import 'package:sarcopenia_project/perg/Perg4.dart';
import 'package:sarcopenia_project/perg/Perg5.dart';
import 'package:sarcopenia_project/perg/Perg6.dart';
import 'package:sarcopenia_project/perg/Resultado.dart';
import 'package:sarcopenia_project/perg/pesoIdade.dart';
import 'package:sarcopenia_project/registrar.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ButtonState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rastrendo a Sarcopenia ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/pesoIdade': (context) => pesoIdade(),
        '/perg1': (context) => Perg1(),
        '/perg2': (context) => Perg2(),
        '/perg3': (context) => Perg3(),
        '/perg4': (context) => Perg4(),
        '/perg5': (context) => Perg5(),
        '/perg6': (context) => Perg6(),
        '/result': (context) => Resultado(),
        '/perfil': (context) => Perfil(),
        '/registrar': (context) => Registrar(),
      },
    );
  }
}
