import 'package:flutter/material.dart';
import 'package:laundry_net/widget/atom/app_logo.dart';

class LogoSamplesView extends StatefulWidget {
  const LogoSamplesView({Key? key}) : super(key: key);

  static const routeName = '/logo-samples';

  @override
  State<LogoSamplesView> createState() => _LogoSamplesViewState();
}

class _LogoSamplesViewState extends State<LogoSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logo Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultLogo(),
            defaultLogoWithText(),
            circleLogo(),
            circleLogoWithText(),
          ],
        ),
      ),
    );
  }

  Widget defaultLogo() {
    return const AppLogo();
  }

  Widget defaultLogoWithText() {
    return const AppLogo(
      withText: true,
    );
  }

  Widget circleLogo() {
    return const AppLogo(
      isRounded: true,
    );
  }

  Widget circleLogoWithText() {
    return const AppLogo(
      isRounded: true,
      withText: true,
    );
  }
}
