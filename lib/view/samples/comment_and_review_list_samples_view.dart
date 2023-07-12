import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import 'package:alvamind_library/widget/molecule/app_expanel_List.dart';
import 'package:alvamind_library/widget/organism/accordion/accordion_question_card.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../widget/atom/app_avatar.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/organism/comments_and_reviews/comments_list.dart';

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
        leftItem: Padding(
          padding: EdgeInsets.only(right: AppSizes.padding / 1.5),
          child: AppAvatar(
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
            borderRadius: BorderRadius.circular(16),
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
          )
        ],
      ),
    );
  }

  Widget commentCard() {
    return SampleWrapper(
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
          isImage: true,
          image: Row(
            children: [
              ...List.generate(3, (i) {
                return Padding(
                  padding: i != 3 ? EdgeInsets.only(right: AppSizes.padding / 2) : EdgeInsets.all(0),
                  child: const AppImage(
                    image: randomImage,
                    width: 70,
                    height: 70,
                    borderRadius: 24,
                    backgroundColor: AppColors.redLv5,
                  ),
                );
              }),
            ],
          ),
        ));
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