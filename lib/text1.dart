import 'package:flutter/material.dart';
class TextCode extends StatefulWidget {
  final String titles;
  final double fontSize;
  const TextCode({super.key,required this.titles,required this.fontSize});

  @override
  State<TextCode> createState() => _TextCodeState();
}

class _TextCodeState extends State<TextCode> {
  

  @override
  Widget build(BuildContext context) {
    return Text(widget.titles,style: TextStyle(
        fontWeight: FontWeight.normal,
        color: const Color.fromARGB(255, 77, 76, 76),
        fontSize: widget.fontSize),);
  }
}
