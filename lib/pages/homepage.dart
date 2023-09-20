import 'package:flutter/material.dart';

import '../widget/list.dart';
import '../widget/search.dart';
import '../widget/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List food = [
    AssetImage('assets/images/1.jpg'),
    AssetImage('assets/images/t2.jpg'),
    AssetImage('assets/images/t3.jpg'),
    AssetImage('assets/images/t4.jpg'),
    AssetImage('assets/images/t5.jpg'),
    AssetImage('assets/images/t6.jpg'),
    AssetImage('assets/images/2.jpg'),
    AssetImage('assets/images/t8.jpg'),
    AssetImage('assets/images/3.jpg'),
  ];
  List namesfood = [
    'معصوب',
    'مطبق',
    'عريكه',
    'معصوب',
    'مطبق',
    'عريكه',
    'معصوب',
    'مطبق',
    'عريكه'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textspage(
                      names: 'تكاليل ',
                      sizes: 26,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchPage(),
                    SizedBox(
                      height: 20,
                    ),
                    ListPage(),
                    Textspage(
                      names: 'اصناف الاطعمه ',
                      sizes: 26,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(offset: Offset(0, 5), blurRadius: 10)
                          ]),
                      child: GridView.builder(
                          itemCount: food.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, i) {
                            return Container(
                              padding: EdgeInsets.only(top: 10),
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 5), blurRadius: 10)
                                  ]),
                              width: 140,
                              height: 1400,
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(44),
                                      image: DecorationImage(
                                          image: food[i], fit: BoxFit.cover),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(right: 20),
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              namesfood[i],
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'MyFont',
                                                  fontSize: 25),
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                            padding: EdgeInsets.only(right: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '4.9',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey,
                                                    ),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                    Icon(Icons.star),
                                                  ],
                                                ),
                                                Container(
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset:
                                                                Offset(0, 5),
                                                            blurRadius: 10,
                                                          )
                                                        ]),
                                                    child: Text(
                                                      '30\$ ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
