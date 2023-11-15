import 'package:flutter/material.dart';
import 'package:food_app/Screen/SingUp%20Screen/singup_screen.dart';
import 'package:food_app/Screen/Singin%20Screen/singin_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    Future.delayed(Duration(seconds: 2),(){
      Get.to(() =>SingUpScreen());
    // Get.to(()=>SingInScreen());
    });
    return  Scaffold(
      body: Stack(
        children: [
          Container(
             child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/freepik.png')),
            height:size.height,
            color: Colors.white,

          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(89)) ),
              height: size.height*0.50,
              
              child: Center(child: Image.asset('assets/images/foodpanda.png')), ),
          ),
           
        ],
      ),
    );
  }
}