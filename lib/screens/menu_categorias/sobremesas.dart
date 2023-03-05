import 'package:deliveryapp/components/card_menu.dart';
import 'package:flutter/material.dart';

class Sobremesas extends StatelessWidget {
  const Sobremesas({Key? key}) : super(key: key);

  final String title = 'Sobremesas';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: const [
            CardMenuList(
              onRoute: '/',
              iconMenuCard: 'images/img003.jpg',
              titleMenuCard: 'Teste01',
              subtitleMenuCard: 'Teste',
            )
          ],
        ),
      ),
    );
  }
}
