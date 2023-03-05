import 'package:flutter/material.dart';

import '../../components/card_menu.dart';

class PageMenu extends StatefulWidget {
  const PageMenu({Key? key}) : super(key: key);

  @override
  State<PageMenu> createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/img001.jpg', height: 380, width: 400),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView(children: const [

                CardMenuList(
                  onRoute: '/tradicionais',
                  iconMenuCard: ('images/tradicionais_logo.png'),
                  titleMenuCard: 'PIZZAS TRADICIONAIS',
                  subtitleMenuCard: 'Pizzas traidicionais do Brasil',
                ),
                CardMenuList(
                  onRoute: '/especiais',
                  iconMenuCard: ('images/especiais_logo.png'),
                  titleMenuCard: 'PIZZAS ESPECIAIS',
                  subtitleMenuCard:
                  'Pizzas traidicionais italianas feitas na nossa casa',
                ),
                CardMenuList(
                  onRoute: '/bebidas',
                  iconMenuCard: ('images/drinks_logo.png'),
                  titleMenuCard: 'BEBIDAS',
                  subtitleMenuCard: 'Bebidas para os mais variados gostos',
                ),
                CardMenuList(
                    onRoute: '/sobremesas',
                    iconMenuCard: ('images/candy_logo.png'),
                    titleMenuCard: 'SOBREMESAS',
                    subtitleMenuCard: 'Seção para os amantes de doces'),
                CardMenuList(
                  onRoute: '/contato',
                  iconMenuCard: ('images/call_logo.png'),
                  titleMenuCard: 'Contato',
                  subtitleMenuCard: 'Todas as nossas formas de contato',
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
