import 'package:flutter/material.dart';
import 'package:oper_pays/cardpage.dart';
import 'package:oper_pays/transaction.dart';


class Homescreen extends StatelessWidget {
  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 1) {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return Cardpage();
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade600)),
                    child: const Text(
                      '😎',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oper',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                      Text(
                        'Good morning',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  const Icon(Icons.notifications_active)
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade400,
                      offset: const Offset(
                        10.0,
                        10.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Total Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    Text(
                      '\$ 7,777.77',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hide',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.black)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.remove_red_eye_sharp,
                          size: 16,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 83,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(6)),
                        Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: Colors.grey),
                            child: const Icon(
                              Icons.call_made_outlined,
                              size: 13,
                            )),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'Send',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 83,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green.shade400),
                                color: Colors.green.shade200),
                            child: const Icon(
                              Icons.call_received_outlined,
                              size: 13,
                            )),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'Receive',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 83,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurpleAccent.shade100),
                            child: const Icon(
                              Icons.swap_horiz_outlined,
                              size: 16,
                            )),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'Swap',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 83,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        Container(
                            width: 15,
                            height: 15,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: const Icon(
                              Icons.add,
                              size: 13,
                            )),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'Deposite',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Recent Transaction',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Transaction(fromcolumn: 'Opercoder', howmuch: '2000'),
              Transaction(fromcolumn: 'Jamshidmirzo', howmuch: '1000'),
              Transaction(fromcolumn: 'Coder', howmuch: '3000'),
              Transaction(fromcolumn: 'Shoxrux', howmuch: '5000'),
              Transaction(fromcolumn: 'Tatuchilar', howmuch: '1000'),
              Transaction(fromcolumn: 'Opercoder', howmuch: '2000'),
              Transaction(fromcolumn: 'Opercoder', howmuch: '2000'),
              Transaction(fromcolumn: 'Opercoder', howmuch: '2000'),
              Transaction(fromcolumn: 'Opercoder', howmuch: '2000'),
            ],
          ),
        ),
      ),
    );
  }
}
