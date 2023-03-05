import 'package:deliveryapp/screens/menu_categorias/bebidas.dart';
import 'package:deliveryapp/screens/menu_categorias/contato.dart';
import 'package:deliveryapp/screens/menu_categorias/pizzas_especiais.dart';
import 'package:deliveryapp/screens/menu_categorias/pizzas_tradicionais.dart';
import 'package:deliveryapp/screens/menu_categorias/sobremesas.dart';
import 'package:deliveryapp/screens/settings.dart';
import 'package:flutter/material.dart';

import '../components/theme/theme.dart';
import 'home.dart';
import 'menu.dart';
import 'perfil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home' : (context) => const Home(),
        '/menu' : (context) => const Menu(),
        '/config' : (context) => const Settings(),
        '/perfil' : (context) => const Perfil(),
        '/especiais' : (context) => const Especiais(),
        '/tradicionais' : (context) => const Tradicionais(),
        '/bebidas' : (context) => const Bebidas(),
        '/sobremesas' : (context) => const Sobremesas(),
        '/contato' : (context) => const Contato(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: tema(),
      home: const Home(),
    );
  }


}