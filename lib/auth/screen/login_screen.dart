import 'package:flutter/material.dart';
import 'package:grandmarch_task/constans/image_const.dart';
import 'package:grandmarch_task/home/screen/home_screen.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
Center(child: Container(
  height: h*0.25,
    width: w*0.8,
    color: Colors.white,
    child: Image.asset(ImageConst.login,fit: BoxFit.fill,),)),
          SizedBox(height: h*0.03,),
          Padding(
            padding:  EdgeInsets.only(left: w*0.14),
            child: Row(
              children: [
                Text("Log in\nyour account",style: TextStyle(fontWeight: FontWeight.w900),),
              ],
            ),
          ),
          SizedBox(height: h*0.03,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w * 0.7,
                child: TextFormField(
                    controller: namecontroller,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,

                    style: TextStyle(
                        fontSize: w * 0.03, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        labelText: "User Name ",
                        labelStyle: TextStyle(
                            fontSize: w * 0.03, fontWeight: FontWeight.w500),
                        // hintText: "Please enter your name",
                        // hintStyle: TextStyle(
                        //   fontSize: w * 0.015,
                        //   fontWeight: FontWeight.w500,
                        // ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.orange,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.01)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.01)),
                        fillColor: Colors.white)),
              ),
              SizedBox(height: h*0.03,),
              SizedBox(
                width: w * 0.7,
                child: TextFormField(
                    controller: passwordcontroller,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,

                    style: TextStyle(
                        fontSize: w * 0.03, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        labelText: "Password ",
                        labelStyle: TextStyle(
                            fontSize: w * 0.03, fontWeight: FontWeight.w500),
                        // hintText: "Please enter your name",
                        // hintStyle: TextStyle(
                        //   fontSize: w * 0.015,
                        //   fontWeight: FontWeight.w500,
                        // ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.orange,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.01)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.01)),
                        fillColor: Colors.white)),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: w*0.15,right: w*0.15,top: w*0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: w*0.03,
                      width: w*0.03,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.005),color: Colors.white,border: Border.all(color: Colors.black)),

                    ),
SizedBox(width: w*0.02,),
                Text("Remember me",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),  ],
                ),
                Text("Forgot password?",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue),)
              ],
            ),
          ),
          SizedBox(height: h*0.16,),
          InkWell(
            onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen(),), (route) => false,);
            },
            child: Container(
              height: h * 0.06,
              width: w * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w * 0.04),
                color: Colors.deepOrange
              ),
              child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: w * 0.03,
                        color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
