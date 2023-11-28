import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/atom/app_avatar.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/molecule/app_expansion_list_tile.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';
import '../../widget/organism/comments_and_reviews/comments_list.dart';
import 'sample_wrapper.dart';

class CommentAndReviewListSamplesView extends StatefulWidget {
  const CommentAndReviewListSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-comment-and-review-list-samples';

  @override
  State<CommentAndReviewListSamplesView> createState() => _CommentAndReviewListSamplesViewState();
}

class _CommentAndReviewListSamplesViewState extends State<CommentAndReviewListSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(title: const Text('Comment And Review List')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            reviewResponse(),
            commentCard(),
            commentList(),
          ],
        ),
      ),
    );
  }

  Widget reviewResponse() {
    return SampleWrapper(
      title: 'Review Response',
      widget: AppExpansionListTile(
        boxShadow: const [
          BoxShadow(
            color: AppColors.transparent,
            offset: Offset(0, 0),
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
        leftItem: Padding(
          padding: EdgeInsets.only(right: AppSizes.padding / 1.5),
          child: const AppAvatar(
            image: randomImage,
            size: 40,
          ),
        ),
        divider: false,
        title: 'Full Name',
        children: [
          QuestionText(
            padding: EdgeInsets.only(
              top: 0,
              right: AppSizes.padding,
              left: AppSizes.padding,
              bottom: AppSizes.padding,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackLv7.withOpacity(0.5),
                offset: const Offset(0, 4),
                blurRadius: 60,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(16),
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
          )
        ],
      ),
    );
  }

  Widget commentCard() {
    return const SampleWrapper(
      title: 'Comment',
      widget: CommentListCard(
        isComment: true,
        titleUser: 'FullName',
        subtitleUser: 'Occuptaion',
        countLike: '431',
        countStaruser: '0',
        imageAvatar: randomImage,
        textComment: 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
        dateComment: '6 hours ago',
        showImage: true,
        images: [randomImage, randomImage, randomImage],
      ),
    );
  }

  Widget commentList() {
    return const SampleWrapper(
        title: 'Comment List',
        widget: CommentListCard(
          isComment: false,
          titleUser: 'FullName',
          subtitleUser: 'Occuptaion',
          countLike: '431',
          countStaruser: '0',
          imageAvatar: randomImage,
          textComment: 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
          dateComment: '6 hours ago',
        ));
  }
}
