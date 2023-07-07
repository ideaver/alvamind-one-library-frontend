import 'package:flutter/material.dart';
import 'package:laundry_net/view/main/main_view.dart';
import 'package:laundry_net/view/samples/avatar_samples_view.dart';
import 'package:laundry_net/view/samples/button_samples_view.dart';
import 'package:laundry_net/view/samples/category_menu_samples_view.dart';
import 'package:laundry_net/view/samples/chips_samples_view.dart';
import 'package:laundry_net/view/samples/dialog_samples_view.dart';
import 'package:laundry_net/view/samples/icon_button_samples_view.dart';
import 'package:laundry_net/view/samples/loading_samples_view.dart';
import 'package:laundry_net/view/samples/message_bubble_samples_view.dart';
import 'package:laundry_net/view/samples/pin_point_samples_view.dart';
import 'package:laundry_net/view/samples/statistic_square_samples_view.dart';
import 'package:laundry_net/view/samples/tags_samples_view.dart';
import 'package:laundry_net/view/samples/text_field_samples_view.dart';

// App routes
class AppRoutes {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppRoutes._();

  static Map<String, WidgetBuilder> routes = {
    MainView.routeName: (context) => const MainView(),
    ButtonSamplesView.routeName: (context) => const ButtonSamplesView(),
    DialogSamplesView.routeName: (context) => const DialogSamplesView(),
    LoadingSamplesView.routeName: (context) => const LoadingSamplesView(),
    AvatarSamplesView.routeName: (context) => const AvatarSamplesView(),
    StatisticSquareSamplesView.routeName: (context) =>
        const StatisticSquareSamplesView(),
    IconButtonSamplesView.routeName: (context) => const IconButtonSamplesView(),
    CategoryMenuSamplesView.routeName: (context) =>
        const CategoryMenuSamplesView(),
    ChipsSamplesView.routeName: (context) => const ChipsSamplesView(),
    PinPointSamplesView.routeName: (context) => const PinPointSamplesView(),
    TagsSamplesView.routeName: (context) => const TagsSamplesView(),
    MessageBubbleSamplesView.routeName: (context) =>
        const MessageBubbleSamplesView(),
    TextFieldSamplesView.routeName: (context) => const TextFieldSamplesView(),
  };
}
