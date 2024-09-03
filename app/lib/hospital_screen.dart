import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  List imgs = [
    "images/hospital-1.jpg",
    "images/hospital-2.jpg",
    "images/hospital-3.jpg",
    "images/hospital-4.jpg",
    "images/hospital-5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 500,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,  // Change to rectangle shape
                            borderRadius: BorderRadius.circular(8),  // Optional: Rounded corners
                            image: DecorationImage(
                              image: AssetImage("images/hospital-1.jpg"), // Use the uploaded image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          "Hospital Name",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Best for Eye care",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 20,),
                             Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            // SizedBox(width: 20,),
                            //  Container(
                            //   padding: EdgeInsets.all(10),
                            //   decoration: BoxDecoration(
                            //     color: Colors.lightBlue,
                            //     shape: BoxShape.circle,
                            //   ),
                            //   child: Icon(
                            //     CupertinoIcons.videocam_fill,
                            //     color: Colors.white,
                            //     size: 25,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "About Hospital",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),

                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Best Hospital Best in Pune Best for Health Best Doctors Best for Everyone",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "(124)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16,
                            ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                "See all",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.7),

                                ),
                              ),
                            ),

                    ],
                  ),
                  SizedBox(height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    imgs[index],
                                  ),
                                ),
                                title: Text(
                                  "Hospital Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                subtitle: Text(
                                  "Location : Pune",
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,
                                    color: Colors.amber,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Best Hospital Best in Pune Best for Health Best Doctors Best for Everyone",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0EEFA),
                        shape: BoxShape.circle,

                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.lightBlue,
                        size: 30,
                      ),
                    ),
                    title: Text(
                      "Pune ,Medical Center",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                    ),
                    subtitle: Text("Address line of The Medical Center"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beds Available : ",
                  style: TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "400",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => AppointmentScreen(),
                // ),
                // );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Get a Appointment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
