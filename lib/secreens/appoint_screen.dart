import 'package:doctor_appointment_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

  class AppointScreen extends StatelessWidget {
    const AppointScreen({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Material(
        color: Color(0xffD9E4EE),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'images/doctor1.jpg',),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          pColor.withOpacity(0.9),
                          pColor.withOpacity(0),
                          pColor.withOpacity(0),
                        ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: sdColor,
                                  )
                                ]
                              ),
                              child: Center(
                                child: Icon(Icons.arrow_back, color: pColor, size: 28,),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF2F8FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4,
                                  spreadRadius: 2
                                ),
                              ]
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline,
                                color: pColor,
                                size:28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ),
                      SizedBox(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                 'Patients',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: wColor,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '1.8K',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: wColor,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: wColor,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '10 yr',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: wColor,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: wColor,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: wColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr Looney',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: pColor,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(MdiIcons.heartPlus, color: Colors.red, size: 28,),
                        SizedBox(width: 5,),
                        Text(
                          'Surgeon',
                          style:TextStyle(
                            fontSize: 17,
                            color: bColor.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "scrambled it to make a type specimen book. "
                          "It has survived not only five centuries, "
                          "but also the leap into electronic typesetting, "
                          "remaining essentially unchanged.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Book Date",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index){
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                                decoration: BoxDecoration(
                                  color: index == 1 ? pColor : Color(0xffF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4,
                                      spreadRadius: 2
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${index + 8}",
                                      style: TextStyle(
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      "DEC",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Book Time",
                      style: TextStyle(
                        fontSize: 18,
                        color: bColor.withOpacity(0.6),
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index){
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              decoration: BoxDecoration(
                                color: index == 2 ? pColor : Color(0xffF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: sdColor,
                                  ),
                                ]
                              ),
                              child: Center(
                                child: Text(
                                  "${index +8}: 00 AM",
                                 style: TextStyle(
                                   fontSize: 17,
                                   color: index == 2
                                     ? wColor
                                     : bColor.withOpacity(0.6),
                                 ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 20,),
                    Material(
                      color: pColor,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              "Book Appointment",
                              style: TextStyle(
                                color: wColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
  