import 'package:flutter/material.dart';
import 'package:food_app/Screen/Favorite%20Screen/favorite_screen.dart';
import 'package:food_app/Screen/Home%20Screen/home_sceen.dart';
import 'package:food_app/Screen/Listalt_Screen/listalt_screen.dart';
import 'package:food_app/Screen/Notification%20Screen/notification_screen.dart';
import 'package:food_app/Screen/Person%20Screen/person_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../BottomNavigation/bottom_navigationbar.dart';
import '../Restanual/Restanual Screen/restanual_screen.dart';

class Scarch_Screen extends StatefulWidget {
  const Scarch_Screen({super.key});

  @override
  State<Scarch_Screen> createState() => _Scarch_ScreenState();
}

class _Scarch_ScreenState extends State<Scarch_Screen> {

  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/singin.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: size.height * 0.2,
                  child: Row(
                    children:const [
                       Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/christopher.png"),
                          radius: 30,
                        ),
                      ),
                       SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Hi, Ross",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  )),
              const SizedBox(
                height: 80,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "What can \n we serve you \n today?",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/seacrh-icon.svg'),
                    const Text(
                      "Seach for address, food",
                      style: TextStyle(fontSize: 18, color: Color(0xFFD3D3D3)),
                    ),
                    SvgPicture.asset('assets/images/location_icon.svg')
                  ],
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
                  onTap: (){
                    Get.to(()=>RestanualScreen());
                  },
                  child:  Center(
                      child: Text(
                    "Search",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ]),
      ),
       
      //   currentIndex: 4,
      //   selectedItemColor: Colors.amber,
      //   backgroundColor: Colors.transparent,
      //   items:
      //  [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home' ),
      //     BottomNavigationBarItem(icon: Icon(Icons.add),label: 'home' ),
      //       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home' ),
      //         BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home' ),
      //           BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home' ),
      // ]),
  
      
    );
  }
}
