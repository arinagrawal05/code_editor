import 'package:code_editor/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget qheading(String text, double fontSize,
    {Color? color, bool center = false}) {
  return Text(text,
      textAlign: center ? TextAlign.center : null,
      style: GoogleFonts.sourceCodePro(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.none,
      ));
}

Widget heading(String text, double fontSize,
    {Color? color, bool center = false}) {
  return Text(text,
      textAlign: center ? TextAlign.center : null,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ));
}

Widget heading1(String text, double fontSize,
    {TextOverflow overF = TextOverflow.ellipsis,
    bool center = false,
    Color? color}) {
  return Text(
    text,
    maxLines: 7,
    style: GoogleFonts.nunito(
        color: color ?? Colors.grey,
        fontSize: fontSize,
        fontWeight: FontWeight.w500),
    overflow: overF,
    textAlign: center ? TextAlign.center : TextAlign.justify,
  );
}

Widget productTileText(String text, double fontSize,
    {TextOverflow overF = TextOverflow.ellipsis,
    bool center = false,
    Color? color = null,
    FontWeight fontweight = FontWeight.w500,
    int? maxLines,
    FontStyle? fontStyle}) {
  return Text(
    text,
    softWrap: true,
    overflow: overF,
    maxLines: maxLines,
    textAlign: center ? TextAlign.center : TextAlign.justify,
    style: GoogleFonts.manrope(
        fontStyle: fontStyle,
        fontSize: fontSize,
        fontWeight: fontweight,
        color: color),
  );
}

Widget mcustomButton(
  String text,
  void Function()? ontap,
  BuildContext context, {
  bool isExpanded = true,
  double? height,
  Color color = myIndigo,
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: MaterialButton(
      // height: ,
      height: height,
      minWidth: isExpanded ? MediaQuery.of(context).size.width : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: color,
      onPressed: ontap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: buttonText(text, 14),
      ),
    ),
  );
}

Widget buttonText(
  String text,
  double fontSize, {
  Color color = const Color(0xffFEF5EA),
}) {
  return Text(
    text,
    style: GoogleFonts.nunito(
        color: color, fontSize: fontSize, fontWeight: FontWeight.w600),
  );
}
