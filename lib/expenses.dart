import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Expences extends StatelessWidget {
  String fromcolumn;
  String howmuch;
  String howmany;
  Expences(
      {super.key,
      required this.fromcolumn,
      required this.howmuch,
      required this.howmany});
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
                child: Icon(Icons.send)),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  fromcolumn,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 23),
                ),
                const Text(
                  '20 Jan 2024 at 10:00pm',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                Text(
                  '+\$ $howmuch',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  '+\$ $howmany left',
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, fontSize: 12),
                ),
              ],
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
