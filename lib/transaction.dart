import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Transaction extends StatelessWidget {
  String fromcolumn;
  String howmuch;
  Transaction({super.key, required this.fromcolumn, required this.howmuch});
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
                      fontWeight: FontWeight.bold, fontSize: 23),
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
            Text(
              '+\$ $howmuch',
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
