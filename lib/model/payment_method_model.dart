class PaymentMethodModel {
  final String id;
  final String name;
  final String image;
  final double? fee;

  const PaymentMethodModel({
    required this.id,
    required this.name,
    required this.image,
    this.fee,
  });
}
