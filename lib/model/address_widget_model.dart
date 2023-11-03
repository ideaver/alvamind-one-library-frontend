class AddressWidgetModel {
  final String image;
  final String rating;
  final String name;
  final String address;
  final bool isPinned;
  final bool isMainAddress;
  final String dateCreated;

  AddressWidgetModel({
    required this.image,
    required this.rating,
    required this.name,
    required this.address,
    required this.isPinned,
    required this.isMainAddress,
    required this.dateCreated,
  });
}
