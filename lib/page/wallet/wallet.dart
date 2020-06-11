import 'package:flutter/material.dart';
import 'package:mall/page/wallet/listItem.dart';
import 'package:mall/page/wallet/payment.dart';
import 'package:intl/intl.dart';

class WalletView extends StatefulWidget {
  @override
  _WalletViewState createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate;
    DateTime now = DateTime.now();
    formattedDate = DateFormat.yMMMd().format(now);
    return Container(
      height: MediaQuery.of(context).size.height,
      // width: double.infinity,
      child: Stack(
          // overflow: Overflow.clip,
          // alignment: Alignment.bottomLeft,
          fit: StackFit.loose,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .6,
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(20.0),
                    child: SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("\$2589.90",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900)),
                              Text("Available Balance",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Icon(Icons.notifications_none, size: 30),
                                  Positioned(
                                      // top: 0,
                                      right: 3,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.cyan,
                                            shape: BoxShape.circle),
                                      )),
                                ],
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "images/cat.jpg",
                                        ))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListItem(),
                      ListItem(title: "Request", iconInside: Icons.info),
                      ListItem(
                          title: "Loan", iconInside: Icons.monetization_on),
                      ListItem(title: "Topup", iconInside: Icons.line_style),
                    ],
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.65,
              minChildSize: 0.65,
              maxChildSize: 1,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      color: Color.fromARGB(255, 226, 228, 231)),
                  child: SingleChildScrollView(
                    // ! the controller to contrl how inner Widget to scr
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent Transactions",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                              // SizedBox(width: 100),
                              Text(
                                "See All",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              // Image.asset("images/image.png")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Wrap(
                          spacing: 20,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "All",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.radio),
                                  Text(
                                    "Income",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_circle),
                                  Text(
                                    "Expenses",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "TODAY",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        ListView.builder(
                          // controller: scrollController,
                          controller: ScrollController(keepScrollOffset: false),
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, position) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              )),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Payment(
                                    expense: 200, dateTime: formattedDate),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ]),
    );
  }
}


