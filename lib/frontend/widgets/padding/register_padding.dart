import 'package:flutter/material.dart';

class RegisterPadding extends StatefulWidget {
  final String text;
  final Icon icon;
  final double directionLeft;
  final double directionRight;
  final double directionTop;
  final double directionBottom;

  const RegisterPadding({Key key, this.text, this.icon, this.directionLeft, this.directionRight, this.directionTop, this.directionBottom}): super(key: key);

  @override
  _RegisterPaddingState createState() => _RegisterPaddingState();
}
//30, 0, 30, 24
class _RegisterPaddingState extends State<RegisterPadding> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        widget.directionLeft,
        widget.directionTop,
        widget.directionRight,
        widget.directionBottom
    ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(60)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.text,
              icon: widget.icon,
            ),
          ),
        ),
      ),
    );
  }
}