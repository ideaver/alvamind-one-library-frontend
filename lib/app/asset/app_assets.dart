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
}
