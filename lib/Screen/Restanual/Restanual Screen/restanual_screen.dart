import 'package:flutter/material.dart';
import 'package:food_app/Screen/Restanual/Populer%20Screen/populer_screen.dart';
import 'package:get/get.dart';
import '../../../Widget/home_page_card.dart';
import '../Nearby Screen/nearby_screen.dart';
import '../Recoment Screen/recoment_screen.dart';
import '../Top Review Screen/top_review_screen.dart';

class RestanualScreen extends StatefulWidget {
  RestanualScreen({super.key});

  @override
  State<RestanualScreen> createState() => _RestanualScreenState();
}

class _RestanualScreenState extends State<RestanualScreen> {
  List toptapbar=[
    "Nearby","Populer","Top review","Recoment"
  ];

  List tabPage=[
  const NearbyScreen(),
  const  PopulerScreen(),
  const  TopReviewScreen(),
  const  RecomentScreen()
    
  ];

   var tabindex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: size.height * 0.23,
              color: const Color(0xFFAC1458),
            ),
            Column(
              children: [
                Container(
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:const Color(0xFFDB166E)),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: size.height * 0.07,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Padding(
                              padding:const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children:[
                                        InkWell(
                                          onTap: (){
                                            Get.back();
                                          },
                                          child:const Icon(
                                            Icons.arrow_back,
                                            color: Colors.black,
                                            size: 16,
                                          ),
                                        ),
                                       
                                       const VerticalDivider(
                                          indent: 10,
                                          endIndent: 10,
                                          color: Colors.grey,
                                          thickness: 2,
                                        ),
                                      const  Icon(
                                          Icons.search,
                                          color: Colors.black,
                                          size: 16,
                                        ),
                                      const  Text(
                                          "Restanual",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                        onTap: (){
                                          
                                        },
                                          child: Icon(
                                            Icons.location_on,
                                            color: Colors.red,
                                            size: 16,
                                          ),
                                        ),
                                        Text(
                                          "Italian",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                       // for(var a=0; a<toptapbar.length; a++)
                     SizedBox(
                      height: 30,
                       child: ListView.builder(
                        itemCount: toptapbar.length,
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: InkWell(
                              onTap: (){
                               setState(() {
                                 tabindex =index;

                               }); 
                              },
                              child: Text(
                                  toptapbar [index],
                                    style:
                                       const TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                            ),
                          );
                        }
                        ),
                     ),
                       
                      ],
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ), 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children:const [
                          Icon(
                            Icons.filter_alt,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children:const [
                          Icon(
                            Icons.view_comfy_alt,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.message,
                            color: Colors.white),
                          
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
         Expanded(
           child: AnimatedSwitcher(duration:const Duration(seconds: 2),
                 child:tabindex==0? Expanded (
           child: SizedBox(
            height: size.height,
             child: ListView.builder(
              shrinkWrap: true,
              primary: false,
             scrollDirection: Axis.vertical,
              
              itemCount:5 ,
              itemBuilder: ((context, index){
                return const HomePageCard();
              })),
           ),
                ):tabindex==1? PopulerScreen():tabindex==2?TopReviewScreen():RecomentScreen()
                
                ),
         ),
      
      ],
    ));
  }
}
