import 'package:alvamind_library/widget/organism/table_organism/table_history_trasaction.dart';
import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/atom/app_avatar.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/molecule/app_card_container.dart';
import '../../widget/molecule/app_column_ink.dart';
import '../../widget/molecule/app_dialog.dart';
import '../../widget/molecule/app_expansion_list_tile.dart';
import '../../widget/molecule/app_icon_button.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/accordion/accordion_question_card.dart';
import '../../widget/organism/comments_and_reviews/comments_list.dart';
import '../../widget/organism/item_card/item_card_list.dart';
import '../../widget/organism/order_card/order_card.dart';
import '../../widget/organism/order_list/order_list.dart';
import '../../widget/organism/tab _detail_outlet/tab_detail_outlet.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import '../../widget/organism/transaction_review_card/list_transaction.dart';
import 'sample_wrapper.dart';

class UserProfileContainerSamplesView extends StatefulWidget {
  const UserProfileContainerSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-user-profile-container-samples';

  @override
  State<UserProfileContainerSamplesView> createState() => _UserProfileContainerSamplesViewState();
}

List<String> dummyName = [
  'Mitsuha Suzuiki',
  'Aoi Nara',
  'Kawaki Tenma',
];

class _UserProfileContainerSamplesViewState extends State<UserProfileContainerSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile Container Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userProfileContainerTab(),
          ],
        ),
      ),
    );
  }

  int tabBarSelected = 0;
  int tagSelected = 0;
  int tagSelected1 = 0;

  Widget userProfileContainerTab() {
    return SampleWrapper(
      title: 'User Profile Container Outer List',
      widget: AppColumnInk(
        children: [
          TabBarDetailOutlet(
            leftIcon: const [
              CustomIcon.chartCurvedIcon,
              CustomIcon.timesquareIcon,
              CustomIcon.timesquareIcon,
              CustomIcon.documentIcon,
              Icons.star_border_rounded,
              Icons.image_outlined,
              Icons.image_outlined,
            ],
            listTabBar: const [
              'Ringkasan',
              'Pemesanan',
              'Riwayat Wallet',
              'Favorit',
              'Ulasan',
              'Komplain'
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tabBarSelected = value;
              });
            },
          ),
          SizedBox(height: AppSizes.padding * 2),
          tabBarSelected == 0
              ? userProfileTabContainer()
              : tabBarSelected == 1
                  ? orderListBody()
                  : tabBarSelected == 2
                      ? tableHistory()
                      : tabBarSelected == 3
                          ? outerList()
                          : tabBarSelected == 4
                              ? reviewTabs()
                              : complainList()
        ],
      ),
    );
  }

// ======

  Widget tableHistory() {
    return AppColumnInk(children: [
      Row(
        children: [
          Expanded(
            child: AppTextField(
              suffixIcon: Icons.search,
              hintText: 'Search..',
              onChanged: (value) {},
              onEditingComplete: () {},
            ),
          ),
          SizedBox(
            width: AppSizes.padding / 2,
          ),
          AppIconButton(
            borderRadius: 15,
            icon: const Icon(
              Icons.sim_card_download_rounded,
              color: AppColors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
      SizedBox(
        height: AppSizes.padding,
      ),
      TableHistoryTransaction(),
    ]);
  }

//
  Widget userProfileTabContainer() {
    return AppCardContainer(
      backgroundColor: AppColors.transparent,
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          const ListTransaction(
            email: 'nakama@gmail.com',
            number: '+62534234432',
            gender: 'Perempuan',
            registerDate: '19 Mei 2023',
            status: 'Aktif',
            statusColor: AppColors.greenLv1,
          ),
          SizedBox(height: AppSizes.padding * 1.5),
          ...List.generate(3, (i) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppSizes.padding * 1.5),
              child: ListCard(
                isSubtitle: i == 0 ? false : null,
                leftIcon: i == 0 ? Icons.location_on_rounded : CustomIcon.walletBoldIcon,
                leftIconColor: i == 0 ? AppColors.greenLv1 : null,
                rightIcon: Icons.chevron_right_rounded,
                title: i == 0
                    ? 'Alamat'
                    : i == 1
                        ? 'No Rekening'
                        : 'Selasa, 23 Juni 2023',
                subtitle: 'Status Complain',
                textTags: i == 0 ? '4' : 'Proses',
                onTapChevronButton: () {
                  // TODO
                },
                onTapCard: () {
                  // TODO
                },
              ),
            );
          })
        ],
      ),
    );
  }

//
  Widget reviewTabs() {
    return AppCardContainer(
      padding: EdgeInsets.all(0),
      backgroundColor: AppColors.transparent,
      child: Column(
        children: [
          TagsOrganism(
            leftIcon: Icons.star_rounded,
            selectedColor: [
              ...List.generate(5, (index) {
                return AppColors.primary;
              })
            ],
            listChips: const [
              'Semua',
              '5',
              '4',
              '3',
              '2',
            ],
            onTap: (value) {
              // TODO
            },
          ),
          SizedBox(
            height: AppSizes.padding,
          ),
          listComment(),
        ],
      ),
    );
  }

  Widget listComment() {
    return Column(
      children: [
        ...List.generate(3, (i) {
          return Column(
            children: [
              CommentListCard(
                padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
                isComment: true,
                titleUser: dummyName[i],
                subtitleUser: 'Occuptaion',
                countLike: '431',
                countStaruser: '${i + 3}',
                imageAvatar: 'https://picsum.photos/id/1$i/100/200',
                textComment: 'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore o eiusmod tempor incididunt ut labore et dolore.',
                dateComment: '6 hours ago',
                isImage: true,
                image: Row(
                  children: [
                    ...List.generate(3, (i) {
                      return Padding(
                        padding: i != 3 ? EdgeInsets.only(right: AppSizes.padding / 2) : EdgeInsets.all(0),
                        child: AppImage(
                          image: 'https://picsum.photos/id/2$i/200/200',
                          width: 70,
                          height: 70,
                          borderRadius: 24,
                          backgroundColor: AppColors.redLv5,
                        ),
                      );
                    }),
                  ],
                ),
              ),
              i == 0
                  ? Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.padding),
                      child: AppExpansionListTile(
                        backgroundColor: AppColors.transparent,
                        paddingChild: EdgeInsets.all(AppSizes.padding),
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
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.blackLv7.withOpacity(0.5),
                                offset: Offset(0, 4),
                                blurRadius: 60,
                                spreadRadius: 0,
                              ),
                            ],
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
                    )
                  : const SizedBox.shrink(),
            ],
          );
        }),
      ],
    );
  }

//
  Widget orderListBody() {
    return Ink(
      child: Column(
        children: [
          AppTextField(
            onTapSearcFilter: () {
              final navigator = Navigator.of(context);
              AppDialog.show(
                navigator,
                title: 'Dialog Title',
                text: 'Dialog Text',
                leftButtonText: 'Left Button',
                rightButtonText: 'Right Button',
              );
            },
            hintText: 'Cari Layanan',
            type: AppTextFieldType.search,
          ),
          SizedBox(height: AppSizes.padding),
          TagsOrganism(
            listChips: const [
              'Semua',
              'Menunggu Konfirmasi',
              'Ambil',
              'Proses',
              'Antar',
              'Selesai',
              'Komplain',
              'Batal'
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tagSelected = value;
              });
            },
          ),
          SizedBox(height: AppSizes.padding),
          ...List.generate(3, (i) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppSizes.padding),
              child: OrderList(
                title: 'Alasan',
                dateTime: '12 : 30 PM',
                location: 'Tokyo, Jepang',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.blackLv7,
                    offset: Offset(0, 4),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                orderCard: OrderCard(
                  image: 'https://picsum.photos/id/3$i/200/400',
                  padding: EdgeInsets.all(0),
                  backgroundColor: AppColors.transparent,
                  starImageCount: '50',
                  title: i == 1 ? 'Zarie Baptista' : 'Barokah Laundry',
                  isProgress: true,
                  textPrice: '20 Kg',
                  statusPrice: 'Estimasi Selesai 7 hari',
                  dateProgress: '2 Agustus 2023',
                  textLeftButton: i == 1 ? 'Order Outlet Lain' : 'Detail Pesanan',
                  textRightButton: i == 1 ? 'Batalkan Pesanan' : 'Lacak Pengiriman',
                  labelingCount: 40,
                  tagText: i == 1
                      ? 'HomeService'
                      : i == 2
                          ? 'SelfService'
                          : 'Delivery',
                  tagTextColor: AppColors.white,
                  tagColor: i == 1
                      ? AppColors.orangeLv1
                      : i == 2
                          ? AppColors.yellowLv1
                          : AppColors.greenLv3,
                  tagBorderWidth: 0,
                  leftButtonColor: i == 1 ? AppColors.blackLv7 : null,
                  rightButtonColor: i == 1 ? AppColors.redLv1 : null,
                  rightButtonTextColor: i == 1 ? AppColors.white : null,
                  leftButtonBorderColor: i == 1 ? AppColors.blackLv7 : null,
                  rightButtonBorderColor: i == 1 ? AppColors.redLv1 : null,
                  onTapLeftButton: () {
                    // TODO
                  },
                  onTapRightButton: () {
                    // TODO
                  },
                ),
              ),
            );
          })
        ],
      ),
    );
  }

//
  Widget complainList() {
    return AppColumnInk(
      children: [
        ...List.generate(3, (i) {
          return Padding(
            padding: i == 2 ? const EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
            child: OrderCard(
              image: 'https://picsum.photos/23$i/300',
              boxShadow: const [
                BoxShadow(
                  color: AppColors.blackLv7,
                  offset: Offset(0, 4),
                  blurRadius: 60,
                  spreadRadius: -10,
                ),
              ],
              starImageCount: '50',
              title: 'Barokah Laundry',
              isProgress: true,
              showProgressLine: false,
              textPrice: 'Rp42.431',
              statusPrice: '/00 days',
              dateProgress: '2 Agustus 2023',
              textLeftButton: 'Detail Pesanan',
              textRightButton: 'Lacak Pengiriman',
              tagText: i == 0
                  ? 'Solusi Ditolak'
                  : i == 1
                      ? 'Solusi Diajukan'
                      : 'Selesai',
              tagBorderColor: i == 0
                  ? AppColors.redLv1
                  : i == 1
                      ? AppColors.primary
                      : AppColors.greenLv1,
              tagTextColor: i == 0
                  ? AppColors.redLv1
                  : i == 1
                      ? AppColors.primary
                      : AppColors.greenLv1,
              labelingCount: 40,
              onTapLeftButton: () {
                // TODO
              },
              onTapRightButton: () {
                // TODO
              },
            ),
          );
        })
      ],
    );
  }

//
  Widget outerList() {
    return AppColumnInk(
      children: [
        AppTextField(
          onTapSearcFilter: () {
            final navigator = Navigator.of(context);
            AppDialog.show(
              navigator,
              title: 'Dialog Title',
              text: 'Dialog Text',
              leftButtonText: 'Left Button',
              rightButtonText: 'Right Button',
            );
          },
          hintText: 'Cari Laundry',
          type: AppTextFieldType.search,
        ),
        SizedBox(height: AppSizes.padding),
        TagsOrganism(
          listChips: const [
            'Semua',
            'Reguler',
            'Premium',
          ],
          onTap: (value) {
            // TODO
            setState(() {
              tagSelected1 = value;
            });
          },
        ),
        SizedBox(height: AppSizes.padding),
        Text(
          '3 Toko',
          style: AppTextStyle.bold(size: 20),
        ),
        SizedBox(height: AppSizes.padding),
        ...List.generate(
            tagSelected1 == 1
                ? 1
                : tagSelected1 == 2
                    ? 2
                    : 3, (i) {
          return Padding(
            padding: i == 2 ? EdgeInsets.all(0) : EdgeInsets.only(bottom: AppSizes.padding),
            child: ItemCardList(
              image: 'https://picsum.photos/20$i/300/',
              starImageCount: '50',
              title: 'Barokah Laundry',
              dateProgress: '2 Agustus 2023',
              textLeftButton: 'Detail Pesanan',
              textRightButton: 'Lacak Pengiriman',
              address: 'Jl. Sukamenak DPR RI KOM...',
              isProfile: true,
              tagText: tagSelected1 == 1
                  ? 'Reguler'
                  : tagSelected1 == 0 && i == 1
                      ? 'Reguler'
                      : 'Premium',
              tagColor: tagSelected1 == 1
                  ? AppColors.greenLv1
                  : tagSelected1 == 0 && i == 1
                      ? AppColors.greenLv2
                      : AppColors.orangeLv1,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.blackLv7,
                  offset: Offset(0, 4),
                  blurRadius: 60,
                  spreadRadius: -10,
                ),
              ],
              onTapCard: () {
                // TODO
              },
            ),
          );
        })
      ],
    );
  }
//
}
