import 'package:flutter/material.dart';

class Notification_Screen extends StatelessWidget {
  const Notification_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text("NOTIFICATIONS "),
            leading: IconButton(
              onPressed: () {
                
              },
              icon:  Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            ]),
        body: ListView.builder(
            shrinkWrap: true,
            primary: true,
            scrollDirection: Axis.vertical,
            itemCount: 8,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/notification.png",
                              height: 80,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Good food and its benifits",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Goodfood makes cooking fun and\n easy. we'll provide your with all the\n ingredients in your meal kit that you\n need to mak a dlecious meal.\n Move the steaks over the\n cool side, away for the charcoal \n Your steak can rest and contunue to \n absorb those smokey flavoes",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "15 Mins",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.6,
                      color: Colors.grey[300],
                      height: 0.6,
                    ),
                  ],
                ),
              );
            })));
  }
}
