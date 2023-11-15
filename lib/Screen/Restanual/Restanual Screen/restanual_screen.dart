import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestanualScreen extends StatelessWidget {
   RestanualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: (){},),
      // ),
      body: Stack(
        
        children: [
        
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            height: 142,
          
           // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Color(0xFFAC1458),
            // child: Container(

            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         color: Colors.white),
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     height: MediaQuery.of(context).size.width * 0.1,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         SvgPicture.asset('assets/images/seacrh-icon.svg'),
                   
            //         const Text(
            //           "Seach for address, food",
            //           style: TextStyle(fontSize: 18, color: Color(0xFFD3D3D3)),
            //         ),
            //         SvgPicture.asset('assets/images/location_icon.svg')
            //       ],
            //     ),
            //   ),
          ), 
          Container(
            height:78, 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Color(0xFFDB166E)),
                     )
        ],
      )
    );
  }
}

