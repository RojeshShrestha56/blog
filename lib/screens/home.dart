import 'package:blog_app/fake-data/blog.dart';
import 'package:blog_app/screens/single-blog.dart';
import 'package:flutter/material.dart';

import '../common/animation/slide-transistion-route.dart';
import '../common/truncate.dart';
import '../modal/blog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> options = [
    'UI Design',
    "UX Design",
    "Blog Design",
    "Visual Design",
    "Motion",
    "Graphic",
    "Typography",
    "3d",
    "Icon",
    "News",
    "Business",
    "Sports",
    "Fashion",
    "Technology",
    "Health",
    "Shoping",
    "Music",
    "Video",
    "Recipe",
    "Fun",
    "Entertainment",
    "Creative"
  ];


  String selectedOption = '';

  List<Widget> getList() {
    List<Widget> childs = [];
    for (var i = 0; i < options.length; i++) {
      childs.add(InkWell(
        onTap: () {
          setState(() {
            selectedOption = options[i];
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 8.0, bottom: 4.0),
          child: new Chip(
              backgroundColor: Color.fromARGB(255, 215, 240, 217),
              padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
              shape: selectedOption == options[i]
                  ? StadiumBorder(
                      side: BorderSide(width: 0.4),
                    )
                  : StadiumBorder(
                      side: BorderSide(width: 0.1),
                    ),
              label: Text(
                options[i],
                style: TextStyle(fontSize: 15.0),
              )),
        ),
      ));
    }
    return childs;
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.notifications,
                                    color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.black, // <-- Button color
                                  onPrimary: Colors.white, // <-- Splash color
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          height: 50,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: getList(),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 0.4),
                                ),
                              ),
                              Container(
                                  child: TextButton.icon(
                                      onPressed: () {},
                                      label: Icon(
                                        Icons.sort,
                                        color: Colors.white,
                                      ),
                                      icon: Text(
                                        "Sort By",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )))
                            ],
                          )),
                      ListView.builder(
                        itemCount: allBlogs.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (item, index) {
                          Blog blog = allBlogs[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(SlideTransistionRoute(
                                  child: SingleBlog(
                                    blog: blog,
                                  ),
                                  direction: AxisDirection.right));
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 15,
                                                    backgroundImage:
                                                        NetworkImage(blog.img),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 10),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          blog.name,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        SizedBox(width: 50.0),
                                                        RichText(
                                                          text: TextSpan(
                                                            text: 'Date : ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            children: <
                                                                TextSpan>[
                                                              TextSpan(
                                                                  text:
                                                                      blog.date,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white)),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      4.0),
                                                          child: RichText(
                                                            text: TextSpan(
                                                              text: 'Topic : ',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                              children: <
                                                                  TextSpan>[
                                                                TextSpan(
                                                                    text: truncate(
                                                                        32,
                                                                        blog
                                                                            .title),
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .white)),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ]),
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
                                                blog.subTitle,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Padding(
                                      //   padding:
                                      //       const EdgeInsets.only(top: 16.0),
                                      //   child: Row(
                                      //     children: [
                                      //       Container(
                                      //         child: Text(
                                      //           'Why You Need UX In Design?',
                                      //           style: TextStyle(
                                      //               color: Colors.grey,
                                      //               fontSize: 15,
                                      //               letterSpacing: 0.4),
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                truncate(32, blog.desc),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
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
                                                'Read Time : ${blog.min} min.',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 13,
                                                    letterSpacing: 0.4),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Icon(Icons.bookmark,
                                                  color: Colors.white),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors
                                                    .white, // <-- Splash color
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ]),
              ),
            )));
  }
}
