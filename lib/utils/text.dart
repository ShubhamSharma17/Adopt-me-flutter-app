import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifiedText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const ModifiedText({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.alef(color: color, fontSize: size),
    );
  }
}

class BoldmodifiedText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BoldmodifiedText({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class FontStyle extends StatelessWidget {
  final String text;

  const FontStyle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(),
    );
  }
}
