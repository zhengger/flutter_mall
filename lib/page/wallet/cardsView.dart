import 'package:flutter/material.dart';
import 'package:mall/page/wallet/vipcard.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DraggableScrollableSheet(
          initialChildSize: .6,
          maxChildSize: 1.0,
          minChildSize: 0.1,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xFFD8D8DC)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Your Cards",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900)),
                            Text("2 Physical Cards and 1 Virtual Card",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          color: Colors.green,
                          iconSize: 20,
                          icon: Icon(Icons.dashboard),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Text("Physical Card"),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Text("Virtual Card"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LiquidSwipe(
                      waveType: WaveType.liquidReveal,
                      pages: [
                        Container(
                          child: VipCard(
                            cardName: "VISA",
                            cardColor: Colors.blue,
                          ),
                        ),
                        Container(
                          child: VipCard(
                            cardName: "MASTER",
                            cardColor: Colors.green,
                          ),
                        ),
                        Container(
                          child: VipCard(
                            cardName: "UNION",
                          ),
                        )
                      ].toList(),
                      fullTransitionValue: 500,
                      enableSlideIcon: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Card Settings",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListView.builder(
                      itemCount: 10,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      controller: ScrollController(keepScrollOffset: false),
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 5,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          shadowColor: Colors.cyanAccent[300],
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                              ),
                            ),
                            title: Text("Card Settings"),
                            trailing: Switch(
                              value: true,
                              activeColor: Colors.green,
                              inactiveThumbColor: Colors.grey,
                              onChanged: (value) {
                                value = !value;
                              },
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CardListWidget extends StatelessWidget {
  const CardListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 500,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        controller: ScrollController(keepScrollOffset: true),
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                width: 10,
              ),
              VipCard(),
            ],
          );
        },
      ),
    );
  }
}

class TestContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              new Text(
                "Take a",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "look at",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Liquid Swipe",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
