import 'package:flutter/material.dart';

class WordWidget extends StatelessWidget {
  final String upperWord;
  final String downWord;
  const WordWidget({
    Key key, this.upperWord, this.downWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            upperWord,
            style: TextStyle(
                color: Color(0xFFBCDFFC),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          Text(
            downWord,
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
