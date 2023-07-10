import 'package:alvamind_library/widget/molecule/app_card.dart';
import 'package:flutter/material.dart';

class ItemCardList extends StatelessWidget {
  final String image;
  final String stars;
  final String title;
  final String subtitle;
  final double price;
  final Function()? onTapCard;
  final Function()? onTapLikeButton;

  const ItemCardList({
    Key? key,
    required this.image,
    required this.stars,
    required this.title,
    required this.subtitle,
    required this.price,
    this.onTapCard,
    this.onTapLikeButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTapCard,
      backgroundImage: image,
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
    );
  }
}
