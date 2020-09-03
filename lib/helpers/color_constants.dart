import 'dart:ui';

class MyColors {
  static String officialColor='#2A2AC0';
  static String darkBlue='#181461';
  static String background ="#ECF1FA";
  static String white ="#FFFFFF";
  static String green='#2AC052';
  static String black='#1C1C1C';
  static String fbColor='#3A559F';
  static String greyText='#9EA1A6';

}
final themeColor = Color(0xfff5a623);
final primaryColor = Color(0xff203152);
final greyColor = Color(0xffaeaeae);
final greyColor2 = Color(0xffE8E8E8);


// rgb to hex
class HexColor extends Color {

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}