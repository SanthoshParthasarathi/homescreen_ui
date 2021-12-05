import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black.withAlpha(120),
          ),
          SizedBox(width: 7),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search For Redeems",
                hintStyle: TextStyle(
                  color: Colors.black.withAlpha(120),
                ),
                border: InputBorder.none,
              ),
              onChanged: (String keyword) {},
            ),
          ),
          Icon(
            Icons.mic,
            color: Colors.black.withAlpha(120),
          )
        ],
      ),
    );
  }
}
