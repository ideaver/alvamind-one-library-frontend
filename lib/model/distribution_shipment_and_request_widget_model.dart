enum DistributionType { requested, sended, accepted }

class DistributionShipmentAndRequestWidgetModel {
  final String id;
  final String address;
  final String qty;
  final String? description;
  final DistributionType status;

  DistributionShipmentAndRequestWidgetModel({
    required this.address,
    required this.qty,
    this.description,
    required this.status,
    required this.id,
  });
}