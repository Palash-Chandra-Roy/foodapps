import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Listalt_Screen extends StatelessWidget {
  const Listalt_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text("Order History"),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
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
                    Card(
                      elevation: 4,
                      child: Container(
                        height: size.height * 0.28,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            // boxShadow: [
                            // BoxShadow(color: Colors.grey,
                            // spreadRadius: 10,blurRadius: 1.5,
                            // offset: Offset(0,7))
                            // ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/pizza.png",
                                      height: 90,
                                      width: 110,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Awful Potato Bagel",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Truffe with mashed potato",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RatingBar.builder(
                                            itemCount: 5,
                                            initialRating: 4,
                                            itemSize: 12,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.red,
                                                ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            }),
                                        const Text(
                                          "286 reviews",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey[300],
                              height: 0.5,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_view_week_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "28 Nov 2010 10:20 Am",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\$332.00",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.red),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })));
  }
}
