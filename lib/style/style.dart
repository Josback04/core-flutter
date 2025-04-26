import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final defaultStyle = ThemeData(
  useMaterial3: false,
  appBarTheme: AppBarTheme(
      color: Colors.white,
      titleSpacing: 0,
      iconTheme: const IconThemeData(
        color: Color(0xFF616161),
      ),
      titleTextStyle: GoogleFonts.leagueSpartan(
        fontSize: 16,
        color: const Color(0x0022252B),
        fontWeight: FontWeight.w900,
      ),
      elevation: 2,
      shadowColor: const Color(0x7E4D5DFA)),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  textTheme: GoogleFonts.leagueSpartanTextTheme(),
  primaryTextTheme: GoogleFonts.leagueSpartanTextTheme(),
  // textTheme: GoogleFonts.leagueSpartanTextTheme(
  //   Typography.blackHelsinki,
  // ),``
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(GoogleFonts.leagueSpartan()))),
  iconTheme: IconThemeData(color: Color(0XFF616161)),
  primaryColor: const Color(0xFF008374),
  hintColor: const Color(0xCC696D78),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 25),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll(Color(0xFF008374)),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    shadowColor: Color(0x7E4D5DFA),
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: const WidgetStatePropertyAll(Color(0xFFF5F5F5)),
    textStyle: WidgetStatePropertyAll(
      GoogleFonts.leagueSpartan(
        fontSize: 13,
        color: const Color(0xCC696D78),
      ),
    ),
    hintStyle: WidgetStatePropertyAll(
      GoogleFonts.leagueSpartan(
        fontSize: 18.6,
        color: const Color(0x0022252B),
      ),
    ),
  ),
);

const green = Color(0xFF008374);
const orange = Color(0xFFF85A40);
const circleAvatarBack = Color(0xFFF5F5F5);
const randomColor = Color(0xFFEDEFFF);
// const grey=

ButtonStyle buttonStyle(BuildContext context, {double? width}) => ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(green),
      foregroundColor: const WidgetStatePropertyAll(orange),
      textStyle: const WidgetStatePropertyAll(TextStyle(color: Colors.white)),
      // minimumSize: WidgetStatePropertyAll(
      //   Size(width ?? MediaQuery.of(context).size.width, 45),
      // ),
    );

InputDecoration formDecoration({
  String? label,
  String? hint,
  double vertical = 0,
  double horizontal = 10,
  String? prefixText,
  Widget? suffix,
  Widget? suffixIcon,
}) =>
    InputDecoration(
      hintText: hint,
      alignLabelWithHint: true,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFEDEFFF),
        ),
      ),
      contentPadding:
          EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      suffix: suffix,
      suffixIcon: suffixIcon,
    );
