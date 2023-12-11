class StockTakingWidgetModel {
  final String id;
  final String endDate;
  final String qty;
  final String startDate;
  final String status;
  final bool isExpired;

  StockTakingWidgetModel({
    required this.endDate,
    required this.qty,
    required this.startDate,
    required this.status,
    required this.id,
    required this.isExpired,
  });
}
