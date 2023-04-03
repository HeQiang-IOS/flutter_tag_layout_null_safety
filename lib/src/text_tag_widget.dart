import 'package:flutter/material.dart';

import 'color_utils.dart';


class TextTagWidget extends StatefulWidget {
  ///显示的文本
  String text;
  EdgeInsets? margin;
  EdgeInsets? padding;

  TextStyle? textStyle;

  Color? backgroundColor;
  Color? borderColor;

  double? borderRadius;

  TextTagWidget(this.text,
      {this.margin = const EdgeInsets.all(4),
      this.padding = const EdgeInsets.only(left: 6,right: 6,top: 3,bottom: 3),
      this.textStyle,
      this.backgroundColor,
      this.borderColor,
      this.borderRadius = 20.0}) {
    if (this.borderColor == null) {
      if (this.backgroundColor != null) {
        this.borderColor = this.backgroundColor;
      } else {
        this.borderColor = getRandomColor();
      }
    }

    if (this.textStyle == null) {
      Color? textColor = this.borderColor;
      if (backgroundColor != null) {
        textColor = Colors.white;
      }
      this.textStyle = TextStyle(fontSize: 12, color: textColor);
    }

    if (this.backgroundColor == null) {
      this.backgroundColor = Colors.transparent;
    }
  }

  @override
  _TestPageState createState() => _TestPageState();
}

//lib/code/main_data.dart
class _TestPageState extends State<TextTagWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius!)),
          border: Border.all(color: widget.borderColor!)),
      child: buildTextWidget(),
    );
  }

  ///构建文本
  Text buildTextWidget() {
    return Text(
      widget.text,
      style: widget.textStyle,
      textAlign: TextAlign.center,
    );
  }
}
