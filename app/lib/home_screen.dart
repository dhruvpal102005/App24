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
    Icon(MdiIcons.toothOutline, color: Colors.lightBlue, size: 30,),
    Icon(MdiIcons.heartPlus, color: Colors.lightBlue, size: 30,),
    Icon(MdiIcons.eye, color: Colors.lightBlue, size: 30,),
    Icon(MdiIcons.brain, color: Colors.lightBlue, size: 30,),
    Icon(MdiIcons.earHearing, color: Colors.lightBlue, size: 30,),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/user.jpg"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Be Healthy",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F8FF),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.map,
                        size: 30,
                        color: Colors.lightBlue,
                        ),
                    ),
                    
                  ),
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,
                      blurRadius: 6,
                    ),
                  ],
                ),
               child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for Your Nearby Hospitals",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(Icons.search,size: 25,),
                ),
               ), 
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Choose Your Concern",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 110,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catNames.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 5,horizontal: 15
                            ),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            catNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 15,),
              child: Text(
                "Best Hospitals in Pune",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              ),
              Container(
                height: 340,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: imgs.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      // Navigator.push(
                                      //   context, MaterialPageRoute(
                                      //     builder: (context) => DoctorScreen()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      child: Image.asset(
                                        imgs[index],
                                        height: 200,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hospital Name",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.6),

                                    ),
                                  ),
                                  Text(
                                    "Best Hospital",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6),

                                    ),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("4.8",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                        )
                                      ],
                                    ),
                                ],
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}