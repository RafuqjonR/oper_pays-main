import 'package:flutter/material.dart';

class Analyticitem extends StatelessWidget {
  String text;
  bool isselected;
  Analyticitem({required this.text, required this.isselected});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 40,
          decoration: BoxDecoration(
              color: isselected ? Colors.white : Colors.green,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
