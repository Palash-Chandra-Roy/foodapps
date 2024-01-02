import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopReviewScreen extends StatelessWidget {
  const TopReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        primary: true,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Image.asset("assets/images/lamp.png")),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Tuna Sushi Platter (3 Types)",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "sushi I Tuna (2 pcs). Semi-fatty Tuna (2 pcs),\n Prime Fatty Tuna(2 pcs)",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        RatingBar.builder(
                            itemCount: 5,
                            initialRating: 4,
                            itemSize: 14,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "286 reviews",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
