import 'package:deliveryapp/components/card_menu.dart';
import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  const Contato({Key? key}) : super(key: key);

  final String title = 'Contato';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
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
      ),
    );
  }
}
