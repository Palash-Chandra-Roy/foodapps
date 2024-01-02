import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../Contact Screen/contact_screen.dart';

class PopulerScreen extends StatelessWidget {
  const PopulerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.2)),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: SizedBox(
                height: 200,
                child: Padding(
                  padding:const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: InkWell(
                            onTap: (){
                              Get.to(ContactScreen());
                            },
                            child: Image.asset(
                              "assets/images/pizza.png",
                              width: size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding:const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text(
                                  "Pizza Boscaiola",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                               const Text(
                                  "Mozzarella,ciuperci, bacon, organo -420g ",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                        itemCount: 5,
                                        initialRating: 4,
                                        itemSize: 12,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        itemBuilder: (context, _) => const Icon(
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
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
