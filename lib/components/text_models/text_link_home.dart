import 'package:flutter/material.dart';

import '../theme/text_style.dart';

class TextLinkHome extends StatelessWidget {
  static String descricaoHome = 'CONHEÇA NOSSOS';
  static String linkHome = 'INGREDIENTES';

  const TextLinkHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          descricaoHome,
          style: textDescLink(),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              linkHome,
              style: textLink(),
            )),
      ],
    );
  }
}
