import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  CustomButton(this.txt, this.onpressed, this.clr);
  String txt = 'abcd';
  Function onpressed;
  Color clr;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: widget.clr,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: widget.onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            widget.txt,
          ),
        ),
      ),
    );
  }
}
