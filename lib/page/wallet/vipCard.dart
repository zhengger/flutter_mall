import 'package:flutter/material.dart';
import 'package:mall/page/wallet/wordWidget.dart';

class VipCard extends StatelessWidget {
  final String cardName;
  final Color cardColor;

  const VipCard({Key key, this.cardName, this.cardColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardColor ?? Color(0xFF233C67)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: Icon(
                    Icons.done,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(cardName,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.white)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("**** **** **** 5678",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WordWidget(
                  upperWord: "CARD HOLDER",
                  downWord: "Frank Zheng",
                ),
                WordWidget(
                  upperWord: "EXPIRES",
                  downWord: "8/22",
                ),
                WordWidget(
                  upperWord: "CVV",
                  downWord: "822",
                ),
              ],
            ),
          ],
        ));
  }
}
