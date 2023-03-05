import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../components/theme/consts.dart';
import '../components/text_models/text_title_h1.dart';
import '../components/theme/text_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFinished = false;
  final String title = 'Pizzaria da Didi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: corWhite,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(
              children: const [
                Text(
                  'HEY PIZZAL♥VERS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: corRed,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const TextTitleH1(),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'Produzimos no Brasil com ingredientes\nitalianos selecionados, para você saborar na sua\ncasa a verdadeira pizza da Itália.',
                  style: textH3(),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset('images/logo.png'),
            const SizedBox(
              height: 30,
            ),
            SwipeableButtonView(
              isFinished: isFinished,
              onFinish: () async {
                await Navigator.pushNamed(context, '/menu');
              },
              onWaitingProcess: () {
                Future.delayed(const Duration(seconds: 2), () {
                  setState(() {
                    isFinished = true;
                  });
                });
              },
              activeColor: corGreen,
              buttonWidget: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: corGreen,
              ),
              buttonText: 'DESLIZE PARA INICIAR',
              buttontextstyle: const TextStyle(
                fontSize: 20,
                color: corWhite,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
