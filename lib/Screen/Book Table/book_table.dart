import 'package:flutter/material.dart';
import 'package:food_app/Screen/Payment/payment_method.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class BookTable extends StatelessWidget {
  const BookTable({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "BOOK A TABLE",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              size: 16,
              color: Colors.black,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(1971),
                lastDate: DateTime(2050),
                onDateChanged: (indext) {}),
          ),
          Divider(
            thickness: 0.6,
            color: Colors.grey,
            height: 0.6,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: size.width,
            height: 20,
            color: Colors.amber,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "ORDERINT",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Number of person",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2 Adults, 3 Children",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                          size: 14,
                        )),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Text(
              "Menu",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              child: ListView.builder(
                  shrinkWrap: false,
                  primary: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child:
                                    Image.asset("assets/images/image 12.png")),
                            title: Text(
                              "Concubine Chicken(Harf)",
                              style: TextStyle(fontSize: 14),
                            ),
                            subtitle: Text("\$132.00",
                                style: TextStyle(fontSize: 12)),
                            trailing: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 30,
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 40,
                              ),
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
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "View more",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            // decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(10), color: Colors.red),
            color: Colors.red,
            width: size.width,
            height: MediaQuery.of(context).size.width * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:\$ 650.00",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(PaymentMethod());
                      },
                      child: Text(
                        "ORDER",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          sucessDilog(context);
                        },
                        icon: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sucessDilog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 350,
              child: Column(
                children: [
                  Lottie.asset("assets/images/ppp.json"),
                  Text(
                    "Thank you!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Your payment is successfully",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        "OK",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
