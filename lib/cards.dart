import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
  // String cardnumber;
  // String cardholder;
  // Cards({super.key, required this.cardholder, required this.cardnumber});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: 363,
          height: 218,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://blog.icons8.com/wp-content/uploads/2020/02/how-to-create-gradient-article-1000x600.jpg'))),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Oper`s bank',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(Icons.card_membership_outlined),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '5614 6800 0706 5267',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Holder Name',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'Opercoder',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Expired Date',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      Text(
                        '10/28',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.blur_circular),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
