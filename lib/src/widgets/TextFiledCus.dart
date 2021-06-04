import 'package:flutter/material.dart';

class TextFiledCus extends StatelessWidget {
  const TextFiledCus({
    Key key,
    this.title,
    this.required,
    this.hintText,
    this.minLine = 1,
    this.maxLine = 1,
    this.enable = true,
    this.textInputAction = TextInputAction.none,
  }) : super(key: key);
  final String title;
  final bool required;
  final String hintText;
  final int minLine;
  final int maxLine;
  final bool enable;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 12, color: Colors.black26),
                ),
                Text(
                  required ? '(*)' : '',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: TextField(
                  minLines: minLine,
                  maxLines: maxLine,
                  textInputAction: textInputAction,
                  enabled: enable,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                      bottom: 15,
                    ),
                    hintText: hintText,
                    border: OutlineInputBorder(gapPadding: 2),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
