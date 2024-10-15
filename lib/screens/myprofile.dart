import 'dart:ui';

import 'package:flutter/material.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.black, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '@adom007',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 0.4),
                                ))
                          ]),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.more_horiz, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.black, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                              'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "23k",
                                                style: TextStyle(
                                                   fontSize: 18,
                                      letterSpacing: 0.4,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: 'Followers ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    
                                  ]),
                            ),
                            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Adom Shafi",
                                                style: TextStyle(
                                                   fontSize: 18,
                                                    letterSpacing: 0.4,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: 'App Designer at UI HUt ',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                        color: Colors.grey),
                                                    
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                      
                                    ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Edit'),
                                    style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    primary: Colors.black, // <-- Button color
                                    onPrimary: Colors.white, // <-- Splash color
                                     ),
                                   )
                                  ],
                                )),

                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              // color: Colors.red,
                                              child: Text(
                                                "POST FROM ADOM",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              // color: Colors.red,
                                              child: Text(
                                                "End Of The Line For Uber",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Why Uber Is Gone?',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                     
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                'Read Time : 7 min.',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 13,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                          ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.delete_rounded, color: Colors.red),
                        style: ElevatedButton.styleFrom(
                          
                          shape: CircleBorder(),
                          primary: Colors.black, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      ),  
                                        ]),
                                  )

                                
                                ])),
                                Card(
            child: Row(
            children: <Widget>[
              Expanded(
                
                flex: 1,
                child: Image.network(
                    'https://3.img-dpreview.com/files/p/TS1200x900~sample_galleries/1330372094/1693761761.jpg',
                    height: 70,
                    width: 70),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Building Community....",
                      style: TextStyle(color: Colors.white, fontSize: 16,letterSpacing: 0.4),
                      
                    ),
                    Text("Why Need Better Community?",
                        style: TextStyle(color: Colors.grey, fontSize: 15,letterSpacing: 0.4),
                        ),
                    Text(
                      "Read Time: 7 min",
                      style: TextStyle(color: Colors.green, fontSize: 13,letterSpacing: 0.4),
                     
                    ),
                    
                  
                  ],
                ),
              ),
              
            ],
          ),
        ),

        Card(
            child: Row(
            children: <Widget>[
              Expanded(
                
                flex: 1,
                child: Image.network(
                    'https://3.img-dpreview.com/files/p/TS1200x900~sample_galleries/1330372094/1693761761.jpg',
                    height: 70,
                    width: 70),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Why UX Is More....",
                      style: TextStyle(color: Colors.white, fontSize: 16,letterSpacing: 0.4),
                      
                    ),
                    Text("Why You Need UX In Design?",
                        style: TextStyle(color: Colors.grey, fontSize: 15,letterSpacing: 0.4),
                        ),
                    Text(
                      "Read Time: 7 min",
                      style: TextStyle(color: Colors.green, fontSize: 13,letterSpacing: 0.4),
                     
                    ),
                    
                  
                  ],
                ),
              ),
              
            ],
          ),
        )
                          ],
                        ),
                      ),
            ]))));
           
  }
}