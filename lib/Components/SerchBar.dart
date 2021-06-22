import 'package:flutter/material.dart';

//  final searchController = TextEditingController();
// SearchBar(searchController: searchController)

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Color(0xff3D4A5C),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            height: 27,
            width: 27,
            child: Image.asset(
              "assets/serchIcon.png",
              color: Color(0xffFFF2F2),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 6, right: 4),
            height: 120,
            width: 200,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 20),
                hintText: "Search...",
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
