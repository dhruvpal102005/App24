import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';



class HomeScreen extends StatelessWidget {
  List catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Ear",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: Colors.redAccent, size: 30,),
    Icon(MdiIcons.heartPlus, color: Colors.redAccent, size: 30,),
    Icon(MdiIcons.eye, color: Colors.redAccent, size: 30,),
    Icon(MdiIcons.brain, color: Colors.redAccent, size: 30,),
    Icon(MdiIcons.earHearing, color: Colors.redAccent, size: 30,),
  ];

  List imgs = [
    "images/hospital-1.jpg",
    "images/hospital-2.jpg",
    "images/hospital-3.jpg",
    "images/hospital-4.jpg",
    "images/hospital-5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/hospital-1.jpg"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "When Someone Means a Alot to You ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    
                  ),
                ],
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}