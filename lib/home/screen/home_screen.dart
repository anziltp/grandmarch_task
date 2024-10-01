import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandmarch_task/constans/image_const.dart';

import '../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List a=[
    {
      "Image":ImageConst.login,
      "Test":"Mission Chinese food"
    },
    {
      "Image":ImageConst.login,
      "Test":"emily"
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Padding(
          padding:  EdgeInsets.only(left: w*0.03),
          child: Text("RESTAURANTS",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: w*0.03),
            child: Row(
              children: [
                Icon(Icons.exit_to_app),
                Text("Log Out")
              ],
            ),
          )
        ],
      ),
      body:
          ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
            return  Column(
              children: [
                Container(
                  height: w*0.4,
                  width: w*1,
child: Image.asset(a[index]["Image"],fit: BoxFit.fill,),
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(a[index]["Test"],style: TextStyle(fontWeight: FontWeight.w900),),
                        Container(
                          height: h*0.025,
                          width: w*0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.03),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.all(w*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("4.3",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
                                Icon(CupertinoIcons.star,weight: w*0.03,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_circle,color: Colors.grey,),
                        Text("Puzza")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.location_solid),
                        Text("999 fulton st,brows")
                      ],
                    )
                  ],
                )
              ],
            );
          }, separatorBuilder: (context, index) {
            return SizedBox(height: h*0.03,);
          }, itemCount: 2)

    );
  }
}
