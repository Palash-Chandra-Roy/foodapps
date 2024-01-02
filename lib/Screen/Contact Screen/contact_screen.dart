import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/Screen/Book%20Table/book_table.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                        height: size.height * 0.3,
                        width: size.width,
                        child: Image(
                          image: AssetImage(
                            "assets/images/imageloc.png",
                          ),
                          fit: BoxFit.cover,
                        )))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Boneless Sour and Spicy Chicken",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Sushi Platter I Tuna (2 pcs), ",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  RatingBar.builder(
                      itemCount: 5,
                      initialRating: 4,
                      itemSize: 12,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "286 reviews",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "OPEN IN",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10:00- 23:00 ",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.phone_callback,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Photo",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          primary: true,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "assets/images/images.png",
                                  width: size.width * 0.25,
                                  height: size.height * 0.2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.4,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text("Google map "),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "DSCRIPTIONS",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Food is scrumptions, dlicious, dlectable,luscious,\n grat tastion, much mor than tasty, really appetizing, \n lop-smacking; the kind of food to have you licking your \nlips in anticipation. This is the word evryon wants to \n hear whn bringing food to the table. Yummy food is \n never unpalatabl, plain tasting, distasteful or \n disgusting. Veiw more ",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all Catagory ",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.45,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  primary: true,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/menu.png",
                                width: size.width * 0.2,
                                height: size.height * 0.28,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              "Onin Rings",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            subtitle: Text(
                              "\$60-300",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 0.6,
                          color: Colors.grey,
                          height: 0.6,
                        ),
                      ],
                    );
                  })),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "View more",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Review ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all Review ",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.45,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  primary: true,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/christopher.png",
                                width: size.width * 0.15,
                                height: size.height * 0.3,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              "Anna Rose",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            subtitle: Text(
                              "3 hours ago. \n \n We had a chance to try som of the food from the restaurant rpard for th food festival, and the chicken croquetter were simply amazing!",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                            trailing: RatingBar.builder(
                                itemCount: 5,
                                initialRating: 4,
                                itemSize: 12,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                }),
                          ),
                        ),
                      ],
                    );
                  })),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.12,
                child: InkWell(
                  onTap: () {
                  Get.to(()=>BookTable());
                  },
                  child: Center(
                      child: Text(
                    "Book A Table",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
