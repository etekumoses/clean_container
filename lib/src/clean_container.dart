import 'package:flutter/material.dart';

class CleanContainer extends StatefulWidget {
  final double width;
  final double height;
  final Color color1;
  final Color color2;
  final String heading;
  final Color textcolor;
  final String subheading;
  final Color subheadingcolor;
  final EdgeInsetsGeometry padding;
  final double radius;
  final TextStyle headingStyle;
  final TextStyle subheadingStyle;

  const CleanContainer(
      {Key key,
      this.width,
      this.radius,
      this.height,
      this.color1,
      this.color2,
      this.heading = "Heading",
      this.textcolor,
      this.subheading = "Subheading",
      this.subheadingcolor,
      this.padding,
      this.headingStyle,
      this.subheadingStyle})
      : super(key: key);

  @override
  State<CleanContainer> createState() => _CleanContainerState();
}

class _CleanContainerState extends State<CleanContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * .98,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? Color(0xffc81841),
            widget.color2 ?? Color(0xff2604de)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200].withOpacity(0.9),
                blurRadius: 8,
                offset: Offset(0, 3))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '${widget.heading}',
              style: widget.headingStyle ??
                  TextStyle(
                    color: widget.textcolor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.subheading,
              style: widget.subheadingStyle ??
                  TextStyle(
                    color: widget.subheadingcolor,
                    fontSize: 15.0,
                    // fontFamily: 'Montserrat',
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
