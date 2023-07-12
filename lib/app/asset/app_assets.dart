import 'package:flutter/material.dart';

class AppAssets {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppAssets._();

  // App logo
  static const String logo = 'assets/images/logo.png';
  static const String logoCircle = 'assets/images/logo_circle.png';

  //Images

  // Image icon
  static const String pinIcon = 'assets/icons/pin_icon.png';

  // Payment Images Icon
  static const String googleIcon = 'assets/images/payment/google-icon.png';
  static const String paypalIcon = 'assets/images/payment/paypal-icon.png';
  static const String mastercardIcon = 'assets/images/payment/mastercard-icon.png';
  static const String walletIcon = 'assets/images/payment/wallet-icon.png';
  static const String moneyIcon = 'assets/images/payment/money-icon.png';
  static const String appleIcon = 'assets/images/payment/apple-icon.png';

  // App State Illustration
  static const String info = 'assets/images/info.png';
  static const String success = 'assets/images/success.png';
  static const String failed = 'assets/images/failed.png';
  static const String warning = 'assets/images/warning.png';

  // Placeholder
  static const String user = 'assets/images/user.png';
  static const String loadingGif = 'assets/images/loading.gif';
  static const String emptyPlaceholder = 'assets/images/empty_placeholder.png';

  // Financial provider logo
  // static const String visa = 'assets/visa.png';

  // Category
  static const String mosqueIcon = 'assets/icons/category/mosque-icon.png';
  static const String bagIcon = 'assets/icons/category/bag-icon.png';
  static const String categoryIcon = 'assets/icons/category/category-icon.png';
  static const String dollIcon = 'assets/icons/category/doll-icon.png';
  static const String helmetIcon = 'assets/icons/category/racing-helmet-icon.png';
  static const String tshirtIcon = 'assets/icons/category/tshirt-icon.png';
  static const String moneyyIcon = 'assets/icons/category/money-icon.png';
  static const String sleepingIcon = 'assets/icons/category/sleeping-bold-icon.png';

  // Flags
  static const String flagID = 'assets/icons/flags/ID.png';
  static const String flagUS = 'assets/icons/flags/US.png';
}

class CustomIcon {
  CustomIcon._();

  static const _kFontFam = 'CustomIcon';
  static const String? _kFontPkg = null;

  static const IconData icon_arrow_down = IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_arrow_right = IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData scan_icon = IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home_icon = IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chat_icon = IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData three_user_icon = IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
