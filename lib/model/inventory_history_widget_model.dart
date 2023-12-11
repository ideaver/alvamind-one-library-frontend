enum InventoryHistoryType { shipping, request, usage, refund, sales }

enum InventoryHistoryStatus { completed, rejected, notDelivered }

class InventoryHistoryWidgetModel {
  final InventoryHistoryType type;
  final InventoryHistoryStatus status;
  final String historyId;
  final String inventoryName;
  final String itemWeight;
  final String date;
  final String picName;

  InventoryHistoryWidgetModel({
    required this.type,
    required this.status,
    required this.historyId,
    required this.inventoryName,
    required this.itemWeight,
    required this.date,
    required this.picName,
  });
}
