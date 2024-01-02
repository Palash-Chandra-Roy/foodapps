import 'package:flutter/material.dart';

class Person_Screen extends StatelessWidget {
  const Person_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                    // topLeft: Radius.circular(30))
                  ),
                  height: size.height * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 100,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/person.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "Erik Waltas",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "0383 zender park",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
         SizedBox(height: 20,),
          Expanded(
            child: Container(height: size.height,
              child: ListView.builder(
                shrinkWrap: false,
                primary: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: ((context,index){
                  return  Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: Card(
                    
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.list_alt_sharp),
                      ),
                      title: Text("Orders History"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                     
                    ),
                  );
                  
                })
                
                 ),
            ),
          ),
         
        ],
      ),
    );
  }
}
