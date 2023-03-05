import 'package:flutter/material.dart';

import '../theme/text_style.dart';


class TextTitleH1 extends StatelessWidget {
  const TextTitleH1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Bem Vindos\n'
              'a nossa família \nItaliana',
          style: textH1(),
        ),
      ],
    );
  }
}