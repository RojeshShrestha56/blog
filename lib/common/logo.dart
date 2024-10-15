import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Logo extends StatelessWidget {
  AnimationController? animationController;

  double? fontHeight = 5;
  BorderRadius? borderRadius;
  Color? background;
  Color? color;

  Logo(
      {Key? key,
      this.fontHeight,
      this.animationController,
      this.borderRadius,
      this.background,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (animationController == null) {
      return Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: background ?? null),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'C',
            style: TextStyle(
                fontFamily: 'Hubballi',
                fontSize: fontHeight,
                fontWeight: FontWeight.bold,
                color: color ?? Color.fromARGB(255, 235, 76, 208)),
          ),
        ),
      );
    } else {
      return SlideTransition(
        position: Tween(begin: Offset(-1, 0), end: Offset.zero)
            .animate(animationController!),
        child: FadeTransition(
          opacity: animationController!,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: background ?? null),
            child: Text(
              'C',
              style: TextStyle(
                  fontFamily: 'Hubballi',
                  fontSize: fontHeight,
                  fontWeight: FontWeight.bold,
                  color: color ?? Color.fromARGB(255, 235, 76, 208)),
            ),
          ),
        ),
      );
    }
  }
}
