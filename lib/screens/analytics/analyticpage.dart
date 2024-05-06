import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oper_pays/analyticspagebottom.dart';
import 'package:oper_pays/homescreen.dart';
import 'package:oper_pays/screens/analytics/analyticitem.dart';
import 'package:oper_pays/screens/analytics/analyticsmenu.dart';

class Analytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Analytics',
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
                Icon(Icons.save_alt_rounded),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return Homescreen();
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Analyticitem(text: '24h', isselected: false),
                    Analyticitem(text: 'Week', isselected: true),
                    Analyticitem(text: 'Month', isselected: false),
                    Analyticitem(text: 'Year', isselected: false),
                    Analyticitem(text: 'Day', isselected: false),
                    Analyticitem(text: '48h', isselected: false),
                    Analyticitem(text: 'Tomorrow', isselected: false),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Expenses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Mon',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Tue',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Wed',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Thu',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                              ),
                              Container(
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                height: 90,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Fri',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Sat',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40,
                          height: 250,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        const Text(
                          'Sun',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Analyticsmth(
                        color: Colors.green, text: 'Grocery', howmuch: '300'),
                    Analyticsmth(
                        color: Colors.red, text: 'Tennis', howmuch: '100'),
                    Analyticsmth(
                        color: Colors.deepOrangeAccent,
                        text: 'Trade',
                        howmuch: '1000'),
                    Analyticsmth(
                        color: Colors.deepPurpleAccent,
                        text: 'Iphone',
                        howmuch: '800'),
                    Analyticsmth(
                        color: Colors.amber, text: 'Watch', howmuch: '150'),
                    Analyticsmth(
                        color: Colors.blue, text: 'Someth', howmuch: '300'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '10 May, Fri',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Anayticsbottom(fromcolumn: 'Netflix', howmuch: '100'),
              Anayticsbottom(fromcolumn: 'Study', howmuch: '200'),
              Anayticsbottom(fromcolumn: 'Eats', howmuch: '300'),
              Anayticsbottom(fromcolumn: 'Laptop', howmuch: '1100'),
              Anayticsbottom(fromcolumn: 'Iphone', howmuch: '400'),
              Anayticsbottom(fromcolumn: 'Glasses', howmuch: '50'),
            ],
          ),
        ),
      ),
    );
  }
}
