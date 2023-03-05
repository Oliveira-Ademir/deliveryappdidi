import 'package:deliveryapp/screens/menu_pages/page_carrinho.dart';
import 'package:flutter/material.dart';

import '../components/theme/consts.dart';
import 'menu_pages/page_menu.dart';
import 'menu_pages/page_pedidos.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _pageAtual = 0;
  List<Widget> body = [
    const PageMenu(),
    const PageCarrinho(),
    const PagePedidos(),
  ];
  final String title = 'Didi Delivery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Perfil',
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, '/perfil');
            });
          },
        ),
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Configurações',
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, '/config');
              });
            },
          ),
          const SizedBox(
              // width: 16.0,
              ),
        ],
      ),
      body: Center(
        child: body[_pageAtual],
      ),
      bottomNavigationBar: bottomMenuNavigator(),
      //bottomNavigationBar: BottomNavigationBar(items: const [],),
    );
  }

  BottomNavigationBar bottomMenuNavigator() {
    return BottomNavigationBar(
        currentIndex: _pageAtual,
        backgroundColor: corRed,
        fixedColor: corWhite,
        onTap: (int novaPage) {
          setState(() {
            _pageAtual = novaPage;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Pedidos',
          ),
        ]);
  }
}
