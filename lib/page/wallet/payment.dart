import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  // TODO how to deal with DateTime?
  // final DateTime dateTime;
  final String dateTime;
  final double expense;

  const Payment({Key key, this.dateTime, this.expense}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 60,
              height: 60,
              color: Colors.white,
              child: Icon(
                Icons.calendar_view_day,
                size: 30,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Payment from Saad",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "+\$$expense",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                "$dateTime",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
