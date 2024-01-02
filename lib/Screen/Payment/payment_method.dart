import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(
          "PAYMENT METHOD",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 16,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 16,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            padding: EdgeInsets.only(bottom: 20, right: 15, left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 
                  children: [
                    Icon(
                      Icons.terminal,
                      size: 30,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "Add a new Card",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right,size: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
