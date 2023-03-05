import 'package:flutter/material.dart';

import '../theme/consts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double sizeText;
  final bool disable;

  const CustomButton({Key? key, required this.onPressed, required this.title, this.disable = false, required this.sizeText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(

        onPressed: disable ? null : onPressed,
        style: ButtonStyle(

          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) return corRedDark;
            if (states.contains(MaterialState.pressed)) return corRedDark;
              return corGreen;
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
          textStyle: MaterialStateProperty.resolveWith((states) {

          })
        ),
        child: Text(

          title,
          style: TextStyle(
            fontSize: sizeText,
          ),
        ),
      ),
    );
  }
}
