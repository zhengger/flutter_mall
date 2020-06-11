import 'package:flutter/material.dart';
import 'package:mall/utils/navigator_util.dart';

class ListItem extends StatelessWidget {
  final String title;
  final IconData iconInside;
  const ListItem({
    Key key,
    this.title = "Send",
    this.iconInside = Icons.calendar_today,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 60,
            height: 60,
            color: Colors.white,
            child: InkWell(
              onTap: () {
                print("Card Clicked");
                NavigatorUtils.goCardsView(context);
              },
              child: Icon(
                iconInside,
                size: 30,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
