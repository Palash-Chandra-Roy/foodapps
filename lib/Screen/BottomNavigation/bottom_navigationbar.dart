import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Favorite Screen/favorite_screen.dart';
import '../Listalt_Screen/listalt_screen.dart';
import '../Notification Screen/notification_screen.dart';
import '../Person Screen/person_screen.dart';
import '../Scarch Screen/scarch_screen.dart';

class BottomNavBar extends StatefulWidget {

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //final _bottomNavBarController = Get.put(BottomNavBarController());
List  bottomIcon = [
       Icons.light_sharp,
       Icons.list_alt_sharp,
       Icons.favorite,
       Icons.notifications,
       Icons.person

    ];

    List  pageList=[
      Scarch_Screen(),
      Listalt_Screen(),
      Favorite_Screen(),
      Notification_Screen(),
      Person_Screen()
    ];

    var index=0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                ),
              border: Border.all(color: Colors.white,width: 4),
              
            ),
        height: 60,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for(var i=0; i<bottomIcon.length; i++)
           InkWell(
            onTap: (){
              setState(() {
                index=i; 
                print(index);
              });
              
            },

            child: Icon(bottomIcon[i],color:index==i?Colors.red:Colors.grey,))
            // SvgPicture.asset(bottomIcon[i],height: 25,color: Colors.red,),
          ],
        )
      ),
        body: AnimatedSwitcher(duration: Duration(seconds: 2),
        child:pageList[index] ,),
        );
    }
}
