import 'package:flutter/material.dart';

import '../../app/route/app_routes.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';

// TODO REMOVE
// DEV PUSPOSE ONLY
class ListMenuView extends StatelessWidget {
  const ListMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Widgets'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                AppRoutes.routes.length,
                (index) {
                  if (index == 0) {
                    return const SizedBox.shrink();
                  }

                  return ListTile(
                    tileColor: index.isOdd
                        ? AppColors.blackLv7.withOpacity(0.24)
                        : null,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.routes.entries.elementAt(index).key,
                      );
                    },
                    title: Text(
                      AppRoutes.routes.entries
                          .elementAt(index)
                          .key
                          .substring(1)
                          .replaceAll('-', ' ')
                          .toUpperCase(),
                      style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.blackLv1,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
