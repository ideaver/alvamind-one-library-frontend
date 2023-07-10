import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:alvamind_library/widget/organism/item_card/item_card_image.dart';
import 'package:flutter/material.dart';

class ItemCardsSamplesView extends StatefulWidget {
  const ItemCardsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-item-cards-samples';

  @override
  State<ItemCardsSamplesView> createState() => _ItemCardsSamplesViewState();
}

class _ItemCardsSamplesViewState extends State<ItemCardsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item Cards Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemCardImage(),
          ],
        ),
      ),
    );
  }

  Widget itemCardImage() {
    return SampleWrapper(
      title: 'Default Statistic Square',
      widget: ItemCardImage(
        image: randomImage,
        stars: '5.0',
        title: 'Title Here',
        subtitle: 'Subtitle here',
        price: 10000,
        onTapCard: () {},
        onTapLikeButton: () {},
      ),
    );
  }
}
