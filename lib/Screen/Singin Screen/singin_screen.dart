import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:food_app/Screen/Home%20Screen/home_sceen.dart';
// import 'package:food_app/Screen/Home%20Screen/home_sceen.dart';
// import 'package:get/get.dart';

// import '../Home Screen/home_sceen.dart';
import '../SingUp Screen/singup_screen.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return  Scaffold(
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
                    hintText: 'Full Name',
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    // labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Email',
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    // labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Phone number',
                  ),
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  onTap: () {},
                ),
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
                  keyboardType: TextInputType.visiblePassword,
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'Conffrim Password',
                    //labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
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
                  onTap: (){
                // Get.to(()=>Search_Screen());
                  },
                  child: Center(
                      child: const Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
             
              SizedBox(
                height: 20,
              ),

               RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: ' ALREADY HAVE AN ACCOUNT ? ',
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: 'LOG IN',
                          recognizer: new TapGestureRecognizer()..onTap = () => {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SingUpScreen()),
                            )
                          },
                          style: TextStyle(color: Colors.deepPurpleAccent)),
                    ]))
           
            ],
          ),
             ]),
       ),
    );
  }
}