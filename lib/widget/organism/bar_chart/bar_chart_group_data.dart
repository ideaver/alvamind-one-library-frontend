import 'package:fl_chart/fl_chart.dart';

import '../../../app/theme/app_colors.dart';

const homeServiceColor = AppColors.brownLv1;
const deliveryColor = AppColors.orangeLv1;
const selfServiceColor = AppColors.cyanLv1;
const dropServiceColor = AppColors.primary;
const betweenSpace = 0.2;

BarChartGroupData generateGroupDataOmzet(
  int x,
  double homeService,
  double dropService,
  double delivery,
  double selfService,
) {
  return BarChartGroupData(
    x: x,
    groupVertically: true,
    barRods: [
      BarChartRodData(
        fromY: 0,
        toY: homeService,
        color: homeServiceColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace,
        toY: homeService + betweenSpace + dropService,
        color: dropServiceColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace + dropService + betweenSpace,
        toY: homeService + betweenSpace + dropService + betweenSpace + selfService,
        color: selfServiceColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace + dropService + betweenSpace + selfService + betweenSpace,
        toY: homeService + betweenSpace + dropService + betweenSpace + selfService + betweenSpace + delivery,
        color: deliveryColor,
        width: 12,
      ),
    ],
  );
}

const incomeColor = AppColors.cyanLv1;
const spendingColor = AppColors.orangeLv1;

BarChartGroupData generateGroupDataProfit(
  int x,
  double homeService,
  double dropService,
  double delivery,
  double selfService,
) {
  return BarChartGroupData(
    x: x,
    groupVertically: true,
    barRods: [
      BarChartRodData(
        fromY: 0,
        toY: homeService,
        color: homeServiceColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace,
        toY: homeService + betweenSpace + dropService,
        color: dropServiceColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace + dropService + betweenSpace,
        toY: homeService + betweenSpace + dropService + betweenSpace + delivery,
        color: deliveryColor,
        width: 12,
      ),
      BarChartRodData(
        fromY: homeService + betweenSpace + dropService + betweenSpace + delivery + betweenSpace,
        toY: homeService + betweenSpace + dropService + betweenSpace + delivery + betweenSpace + selfService,
        color: selfServiceColor,
        width: 12,
      ),
    ],
  );
}
