import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandmarch_task/constans/image_const.dart';

import '../../main.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: w*0.4,
            width: w*1,
            child: Image.asset(ImageConst.login,fit: BoxFit.fill,),
            color: Colors.black,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mission Chinese food",style: TextStyle(fontWeight: FontWeight.w900),),
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
      ),
    );
  }
}
