import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, 10), blurRadius: 10, color: Colors.red)
          ],
          borderRadius: BorderRadius.circular(44)),
      child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey[300]),
              border: InputBorder.none,
              suffixIcon:
                  Icon(Icons.restaurant_menu_outlined, color: Colors.grey[300]),
              hintText: 'ابحث عن طعامك ',
              hintStyle: TextStyle(color: Colors.grey[300]))),
    );
  }
}
