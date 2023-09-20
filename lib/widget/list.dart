import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [BoxShadow(offset: Offset(0, 5), blurRadius: 10)]),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: food[index]),
                      borderRadius: BorderRadius.circular(44),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 6), blurRadius: 10)
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  namesfood[index],
                  style: TextStyle(fontFamily: 'MyFont', fontSize: 20),
                )
              ],
            );
          }),
    );
  }
}
