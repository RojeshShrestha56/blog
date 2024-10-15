import 'package:blog_app/common/truncate.dart';
import 'package:flutter/material.dart';

import '../modal/blog.dart';

class SingleBlog extends StatefulWidget {
  Blog blog;

  SingleBlog({Key? key, required this.blog}) : super(key: key);

  @override
  State<SingleBlog> createState() => _SingleBlogState();
}

class _SingleBlogState extends State<SingleBlog> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

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
                                          backgroundImage:
                                              NetworkImage(widget.blog.img),
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
                                                widget.blog.name,
                                                style: TextStyle(
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
                                                    text: 'Topic : ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: truncate(
                                                              20,
                                                              widget
                                                                  .blog.title),
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
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    // color: Colors.red,
                                    child: Text(
                                      widget.blog.subTitle,
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
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Container(
                                      child: Text(
                                        widget.blog.desc,
                                        textAlign: TextAlign.left,
                                        // maxLines: 7,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            letterSpacing: 0.4),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('2.4k')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.comment_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('140')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.share_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('20')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:
                                                  Icon(Icons.bookmark_rounded),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              ))
                                        ]),
                                  )
                                ])
                          ],
                        ),
                      ),
                    ],
                  ))
            ]),
      ),
    ));
  }
}
