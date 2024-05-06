import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:oper_pays/cards.dart';
import 'package:oper_pays/expenses.dart';
import 'package:oper_pays/screens/analytics/analyticpage.dart';

class Cardpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cards',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.shade500),
            ),
            child: const Row(
              children: [
                Icon(Icons.add),
                Text('Add'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 2) {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return Analytics();
            }));
          }
        },
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 222, 219, 219),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_card),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black, Colors.grey],
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.snow,
                      color: Colors.white,
                      size: 70,
                    ),
                    Text(
                      'Freeze !',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black, Colors.grey],
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.arrow_clockwise,
                      color: Colors.white,
                      size: 70,
                    ),
                    Text(
                      'Deactivate',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '1 May,Wednesday',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Expences(
                      fromcolumn: 'For study', howmuch: '2000', howmany: '516'),
                  Expences(
                      fromcolumn: 'For apple', howmuch: '3000', howmany: '616'),
                  Expences(
                      fromcolumn: 'For study', howmuch: '2000', howmany: '516'),
                  Expences(
                      fromcolumn: 'For study', howmuch: '2000', howmany: '516'),
                  Expences(
                      fromcolumn: 'For study', howmuch: '2000', howmany: '516'),
                  Expences(
                      fromcolumn: 'For study', howmuch: '2000', howmany: '516'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
