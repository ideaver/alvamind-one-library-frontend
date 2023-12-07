class InventoryWidgetModel {
  final String image;
  final String name;
  final String skuId;
  final String category;
  final String qty;
  final String stockType;

  InventoryWidgetModel({
    required this.category,
    required this.qty,
    required this.stockType,
    required this.image,
    required this.name,
    required this.skuId,
  });
}
