import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laundry_net/app/theme/app_colors.dart';
import 'package:laundry_net/app/theme/app_text_style.dart';
import 'package:laundry_net/widget/molecule/app_button.dart';

import '../atom/app_progress_indicator.dart';

// App Dialog Widget
// v.2.0.1
// by Elriz Wiraswara

class AppDialog {
  static Future<void> show(
    NavigatorState navigator, {
    String? title,
    Widget? child,
    String? text,
    EdgeInsetsGeometry? padding,
    String? leftButtonText,
    String? rightButtonText,
    Color? backgroundColor,
    Function()? onTapLeftButton,
    Function()? onTapRightButton,
    bool? dismissible,
    bool? showButtons,
    bool? enableRightButton,
    bool? enableLeftButton,
    Color? leftButtonTextColor,
    Color? rightButtonTextColor,
    double? elevation,
  }) async {
    showDialog(
      context: navigator.context,
      builder: (context) {
        return AppDialogWidget(
          title: title,
          text: text,
          padding: padding,
          rightButtonText: rightButtonText,
          leftButtonText: leftButtonText,
          backgroundColor: backgroundColor ?? AppColors.white,
          onTapLeftButton: onTapLeftButton,
          onTapRightButton: onTapRightButton,
          dismissible: dismissible ?? true,
          showButtons: showButtons ?? true,
          enableRightButton: enableRightButton ?? true,
          enableLeftButton: enableLeftButton ?? true,
          leftButtonTextColor: leftButtonTextColor ?? AppColors.blackLv1,
          rightButtonTextColor: rightButtonTextColor ?? AppColors.primary,
          elevation: elevation,
          child: child,
        );
      },
    );
  }

  static Future<void> showErrorDialog(
    NavigatorState navigator, {
    String? title,
    String? message,
    String? error,
  }) async {
    showDialog(
      context: navigator.context,
      barrierDismissible: false,
      builder: (context) {
        return AppDialogWidget(
          title: title ?? 'Oops!',
          child: Column(
            children: [
              Text(
                message ??
                    'Something went wrong, please contact your system administrator or try restart the app',
                textAlign: TextAlign.center,
                style: AppTextStyle.bodyMedium(
                  fontWeight: AppFontWeight.medium,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                error.toString().length > 35
                    ? error.toString().substring(0, 15)
                    : error.toString(),
                textAlign: TextAlign.center,
                style: AppTextStyle.bodySmall(
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.blackLv6,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> showDialogProgress(
    NavigatorState navigator, {
    bool dismissible = false,
  }) async {
    showDialog(
      context: navigator.context,
      builder: (context) {
        return AppDialogWidget(
          dismissible: kDebugMode ? true : dismissible,
          backgroundColor: Colors.transparent,
          elevation: 0,
          showButtons: false,
          child: const AppProgressIndicator(
            color: Colors.white,
            textColor: Colors.white,
          ),
        );
      },
    );
  }
}

// Custom Dialog
class AppDialogWidget extends StatelessWidget {
  final String? title;
  final Widget? child;
  final String? text;
  final EdgeInsetsGeometry? padding;
  final String? leftButtonText;
  final String? rightButtonText;
  final Color backgroundColor;
  final Function()? onTapLeftButton;
  final Function()? onTapRightButton;
  final bool dismissible;
  final bool showButtons;
  final bool enableRightButton;
  final bool enableLeftButton;
  final Color leftButtonTextColor;
  final Color rightButtonTextColor;
  final double? elevation;

  const AppDialogWidget({
    Key? key,
    this.title,
    this.child,
    this.text,
    this.padding,
    this.rightButtonText = 'Close',
    this.leftButtonText,
    this.backgroundColor = AppColors.white,
    this.onTapLeftButton,
    this.onTapRightButton,
    this.dismissible = true,
    this.showButtons = true,
    this.enableRightButton = true,
    this.enableLeftButton = true,
    this.leftButtonTextColor = AppColors.blackLv1,
    this.rightButtonTextColor = AppColors.primary,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(dismissible),
      child: Dialog(
        elevation: elevation,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 512),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                dialogTitle(),
                dialogBody(),
                dialogButtons(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dialogTitle() {
    return title != null
        ? Container(
            padding: const EdgeInsets.all(24),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                // border: Border(
                //   bottom: BorderSide(
                //     width: 0.5,
                //     color: AppColors.blackLv12,
                //   ),
                // ),
                ),
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: AppTextStyle.heading6(),
            ),
          )
        : const SizedBox.shrink();
  }

  Widget dialogBody() {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 10,
          ),
      alignment: Alignment.center,
      child: text != null
          ? Text(
              text!,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMedium(fontWeight: AppFontWeight.medium),
            )
          : child ?? const SizedBox.shrink(),
    );
  }

  Widget dialogButtons(BuildContext context) {
    return !showButtons
        ? const SizedBox.shrink()
        : Container(
            decoration: const BoxDecoration(
                // border: Border(
                //   top: BorderSide(
                //     width: 0.5,
                //     color: AppColors.blackLv13,
                //   ),
                // ),
                ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: <Widget>[
                  leftButtonText != null
                      ? Expanded(
                          child: AppButton(
                            text: leftButtonText!,
                            buttonColor: backgroundColor,
                            textColor: enableRightButton
                                ? leftButtonTextColor
                                : AppColors.blackLv1,
                            onTap: () async {
                              if (enableLeftButton) {
                                if (onTapLeftButton != null) {
                                  onTapLeftButton!();
                                } else {
                                  Navigator.of(context).pop();
                                }
                              }
                            },
                          ),
                        )
                      : const SizedBox.shrink(),
                  leftButtonText != null && rightButtonText != null
                      ? Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          height: 18,
                          width: 1,
                          color: AppColors.blackLv4,
                        )
                      : const SizedBox.shrink(),
                  rightButtonText != null
                      ? Expanded(
                          child: AppButton(
                            text: rightButtonText!,
                            buttonColor: backgroundColor,
                            textColor: enableRightButton
                                ? rightButtonTextColor
                                : AppColors.blackLv1,
                            onTap: () async {
                              if (enableRightButton) {
                                if (onTapRightButton != null) {
                                  onTapRightButton!();
                                } else {
                                  Navigator.of(context).pop();
                                }
                              }
                            },
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ),
          );
  }
}
