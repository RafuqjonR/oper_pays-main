import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Anayticsbottom extends StatelessWidget {
  String fromcolumn;
  String howmuch;

  Anayticsbottom({super.key, required this.fromcolumn, required this.howmuch});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green.shade200),
                child: const Icon(Icons.money_off_sharp)),
            const Spacer(),
            Column(
              children: [
                Text(
                  fromcolumn,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 23),
                ),
                const Text(
                  'expenses',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '-\$ $howmuch',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
