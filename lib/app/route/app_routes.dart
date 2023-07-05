import 'package:flutter/material.dart';
import 'package:laundry_net/view/main/main_view.dart';
import 'package:laundry_net/view/samples/button_samples_view.dart';

import '../../view/samples/dialog_samples_view.dart';

// App routes
class AppRoutes {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppRoutes._();

  static Map<String, WidgetBuilder> routes = {
    MainView.routeName: (context) => const MainView(),
    ButtonSamplesView.routeName: (context) => const ButtonSamplesView(),
    DialogSamplesView.routeName: (context) => const DialogSamplesView(),
  };
}
