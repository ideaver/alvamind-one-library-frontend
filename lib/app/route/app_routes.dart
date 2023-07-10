import 'package:alvamind_library/view/main/main_view.dart';
import 'package:alvamind_library/view/samples/avatar_samples_view.dart';
import 'package:alvamind_library/view/samples/button_samples_view.dart';
import 'package:alvamind_library/view/samples/category_menu_samples_view.dart';
import 'package:alvamind_library/view/samples/chips_samples_view.dart';
import 'package:alvamind_library/view/samples/dialog_samples_view.dart';
import 'package:alvamind_library/view/samples/divider_samples_view.dart';
import 'package:alvamind_library/view/samples/icon_button_samples_view.dart';
import 'package:alvamind_library/view/samples/illustration_state_samples_view.dart';
import 'package:alvamind_library/view/samples/image_samples_view.dart';
import 'package:alvamind_library/view/samples/input_field_samples_view.dart';
import 'package:alvamind_library/view/samples/input_search_samples_view.dart';
import 'package:alvamind_library/view/samples/loading_samples_view.dart';
import 'package:alvamind_library/view/samples/logo_samples_view.dart';
import 'package:alvamind_library/view/samples/message_bubble_samples_view.dart';
import 'package:alvamind_library/view/samples/pin_point_samples_view.dart';
import 'package:alvamind_library/view/samples/statistic_square_samples_view.dart';
import 'package:alvamind_library/view/samples/tags_samples_view.dart';
import 'package:alvamind_library/view/samples/tool_tip_menu_samples_view.dart';
import 'package:flutter/material.dart';

import '../../view/samples/accordion_samples_view.dart';

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
    StatisticSquareSamplesView.routeName: (context) => const StatisticSquareSamplesView(),
    IconButtonSamplesView.routeName: (context) => const IconButtonSamplesView(),
    CategoryMenuSamplesView.routeName: (context) => const CategoryMenuSamplesView(),
    ChipsSamplesView.routeName: (context) => const ChipsSamplesView(),
    PinPointSamplesView.routeName: (context) => const PinPointSamplesView(),
    TagsSamplesView.routeName: (context) => const TagsSamplesView(),
    MessageBubbleSamplesView.routeName: (context) => const MessageBubbleSamplesView(),
    InputFieldSamplesView.routeName: (context) => const InputFieldSamplesView(),
    ToolTipMenuSamples.routeName: (context) => const ToolTipMenuSamples(),
    DividerSamplesView.routeName: (context) => const DividerSamplesView(),
    LogoSamplesView.routeName: (context) => const LogoSamplesView(),
    ImageSamplesView.routeName: (context) => const ImageSamplesView(),
    IllustrationStateSamplesView.routeName: (context) => const IllustrationStateSamplesView(),
    InputSearchFieldSamplesView.routeName: (context) => const InputSearchFieldSamplesView(),
    AccordionSamplesView.routeName: (context) => const AccordionSamplesView(),
  };
}
