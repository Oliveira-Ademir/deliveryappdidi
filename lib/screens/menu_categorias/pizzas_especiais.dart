import 'package:deliveryapp/components/card_menu.dart';
import 'package:flutter/material.dart';

class Especiais extends StatelessWidget {
  const Especiais({Key? key}) : super(key: key);

  final String title = 'Pizzas Especiais';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
