import 'package:flutter/material.dart';

class Analyticsmth extends StatelessWidget {
  Color color;
  String text;
  String howmuch;
  Analyticsmth(
      {required this.color, required this.text, required this.howmuch});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Text(
                text,
                style:const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '\$$howmuch',
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ],
          ),
        ),
      const  SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
