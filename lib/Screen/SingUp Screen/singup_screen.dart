
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screen/Scarch%20Screen/scarch_screen.dart';
import 'package:get/get.dart';

import '../BottomNavigation/bottom_navigationbar.dart';
import '../Singin Screen/singin_screen.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body:SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sinup.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: size.height * 0.2,
                  child:
                      Center(child: Image.asset('assets/images/foodpanda.png'))),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    // labelStyle: TextStyle(color: Colors.white),
                    hintText: 'UserName',
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Password',
                    //labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.1,
                child: InkWell(
                  onTap: () {
                    print("text");
                   // Get.to(()=>BottomNavBar());
                   Navigator.push(context, MaterialPageRoute(
                              builder: (context) => BottomNavBar()));
                  } ,
                  child: const Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const Color(0xFf2B65D1)),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                  Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    Text(
                      "CONNECT WITH FACBEOOK",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
           const SizedBox(
                height: 20,
              ),
       
              RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: " Don't have an account? ",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text:"Sign In",
                          recognizer: new TapGestureRecognizer()..onTap = () => {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SingInScreen()),
                            )
                          },
                          style:const TextStyle(color: Colors.deepPurpleAccent)),
                    ]))
            ],
          ),
        ]),
      ),
    );
  }
}
