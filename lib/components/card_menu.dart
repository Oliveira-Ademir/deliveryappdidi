import 'package:flutter/material.dart';

import 'theme/consts.dart';
import 'theme/text_style.dart';

class CardMenuList extends StatefulWidget {
  const CardMenuList({
    super.key,
    this.iconMenuCard,
    required this.titleMenuCard,
    required this.subtitleMenuCard,
    required this.onRoute,
  });

  final String? iconMenuCard;
  final String titleMenuCard;
  final String subtitleMenuCard;
  final String onRoute;

  @override
  State<CardMenuList> createState() => _CardMenuListState();
}

class _CardMenuListState extends State<CardMenuList> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4.2,
        shadowColor: corRed,
        color: corWhite,
        child: Column(
          children: [
            ListTile(
                onTap: () {
                  Navigator.pushNamed(context, widget.onRoute);
                },
                leading: Image.asset(
                  '${widget.iconMenuCard}',
                  height: 32,
                  width: 32,
                ),
                title: Text(
                  widget.titleMenuCard,
                  style: textH3(),
                ),
                subtitle: Text(
                  widget.subtitleMenuCard,
                  style: textDescLink(),
                )),
          ],
        ),
      ),
    );
  }
}
