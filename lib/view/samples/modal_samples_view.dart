import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../../widget/atom/app_avatar.dart';
import '../../widget/atom/app_divider.dart';
import '../../widget/atom/app_image.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/molecule/app_column_ink.dart';
import '../../widget/molecule/app_modal.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/review/star_checked.dart';
import 'sample_wrapper.dart';

class ModalPopupButtonSamplesView extends StatefulWidget {
  const ModalPopupButtonSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-modal-samples';

  @override
  State<ModalPopupButtonSamplesView> createState() => _ModalPopupButtonSamplesViewState();
}

class _ModalPopupButtonSamplesViewState extends State<ModalPopupButtonSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Modal Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            modalPopUp(),
            modalPopUpCustom(),
            modalPopUpCustomHeight(),
            modalPopUpWithMiniTitle(),
            modalPopUpWithAddress(),
            modalPopUpWithPrice(),
            modalPopUpWithSlider(),
          ],
        ),
      ),
    );
  }

  Widget modalPopUp() {
    return SampleWrapper(
      title: 'Modal PopUp',
      widget: AppButton(
        text: 'Modal PopUp',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            backgroundColor: AppColors.white,
            title: 'Modal',
            titleColor: AppColors.redLv1,
            miniTitle: 'Are you sure you want to log out?',
            subtitle: 'Lorem ipsum dolor sit amet hua qui lori ipsum sit ghui amet poety amet',
            subtitleColor: AppColors.black,
            directionButton: Axis.horizontal,
            price: false,
            children: [
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: 'Cancel',
                  textColor: AppColors.primary,
                  buttonColor: AppColors.blueLv5,
                  rounded: true,
                ),
              ),
              SizedBox(width: AppSizes.padding / 2),
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: 'Yes, Logout',
                  rounded: true,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget modalPopUpCustom() {
    return SampleWrapper(
      title: 'Modal PopUp Custom',
      widget: AppButton(
        text: 'Modal PopUp Custom',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            price: false,
            backgroundColor: AppColors.white,
            children: [
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: 'Berikutnya',
                  rounded: true,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget modalPopUpWithMiniTitle() {
    return SampleWrapper(
      title: 'Modal PopUp with Text',
      widget: AppButton(
        text: 'Modal PopUp with Text',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            backgroundColor: AppColors.white,
            title: 'Logout',
            titleColor: AppColors.redLv1,
            miniTitle: 'Are you sure you want to log out?',
            directionButton: Axis.horizontal,
            price: false,
            children: [
              Expanded(
                child: AppButton(
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizes.padding,
                  ),
                  text: 'Cancel',
                  textColor: AppColors.primary,
                  buttonColor: AppColors.blueLv5,
                  rounded: true,
                ),
              ),
              SizedBox(width: AppSizes.padding / 2),
              Expanded(
                child: AppButton(
                  onTap: () {},
                  text: 'Yes, Logout',
                  rounded: true,
                  padding: EdgeInsets.symmetric(
                    vertical: AppSizes.padding,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget modalPopUpWithAddress() {
    return SampleWrapper(
      title: 'Modal PopUp with Address',
      widget: AppButton(
        text: 'Modal PopUp with Adress',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            backgroundColor: AppColors.white,
            title: 'Pin Poin Alamat',
            titleColor: AppColors.black,
            directionButton: Axis.vertical,
            textAddress: true,
            price: false,
            titleAddress: 'Rancamulya',
            subtitleAddress: 'Pameungpek, Kab. Bandung, Jawa barat',
            children: [
              AppButton(
                onTap: () {},
                text: '',
                rounded: true,
                customText: Expanded(
                  child: Text(
                    'Pilih Lokasi dan Lanjut Isi Alamat',
                    style: AppTextStyle.bold(size: 16, color: AppColors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.padding / 2,
              ),
              AppButton(
                onTap: () {},
                text: '',
                textColor: AppColors.primary,
                buttonColor: AppColors.blueLv5,
                rounded: true,
                customText: Expanded(
                  child: Text(
                    'Tidak Ketemu? Isi Alamat Manual',
                    style: AppTextStyle.bold(size: 16, color: AppColors.primary),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget modalPopUpWithPrice() {
    return SampleWrapper(
      title: 'Modal PopUp with Price',
      widget: AppButton(
        text: 'Modal PopUp with Price',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            backgroundColor: AppColors.white,
            title: 'Logout',
            miniTitle: 'Are you sure you want to log out?',
            titleColor: AppColors.black,
            directionButton: Axis.vertical,
            price: true,
            textPrice: '29',
            statusPrice: '/night',
            children: [],
            priceButton: () {
              // TODO
            },
          );
        },
      ),
    );
  }

  Widget modalPopUpWithSlider() {
    return SampleWrapper(
      title: 'Modal PopUp with Slider',
      widget: AppButton(
        text: 'Modal PopUp with Slider',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            backgroundColor: AppColors.white,
            title: 'Atur Jarak Absen',
            titleColor: AppColors.black,
            directionButton: Axis.vertical,
            slider: true,
            price: false,
            children: [
              AppButton(
                onTap: () {},
                text: '',
                customText: Expanded(
                  child: Text(
                    'Pilih Lokasi dan Lanjut Isi Alamat',
                    style: AppTextStyle.bold(size: 16, color: AppColors.white),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
                rounded: true,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget modalPopUpCustomHeight() {
    return SampleWrapper(
      title: 'Modal PopUp Custom Height',
      widget: AppButton(
        text: 'Modal PopUp Custom Height',
        onTap: () {
          final navigator = Navigator.of(context);
          AppModal.show(
            navigator,
            price: false,
            isScrolled: true,
            backgroundColor: AppColors.white,
            moreWidget: [
              reviewForm()
            ],
            children: [],
          );
        },
      ),
    );
  }

  Widget reviewForm() {
    return AppColumnInk(
      children: [
        SizedBox(height: AppSizes.padding * 1.5),
        textHeadline(
            'Kebersihan',
            [
              StarChecked(onTapStar: (value) {
                // TODO
              }),
            ],
            CrossAxisAlignment.center),
        SizedBox(height: AppSizes.padding * 1.5),
        textHeadline(
            'Kualitas',
            [
              StarChecked(onTapStar: (value) {
                // TODO
              }),
            ],
            CrossAxisAlignment.center),
        SizedBox(height: AppSizes.padding * 1.5),
        textHeadline(
            'Kecepatan',
            [
              StarChecked(onTapStar: (value) {
                // TODO
              }),
            ],
            CrossAxisAlignment.center),
        const AppDivider(
          thickness: 2,
          color: AppColors.blackLv8,
        ),
        textHeadline(
            'Unggah Foto',
            [
              Row(
                children: [
                  ...List.generate(3, (index) {
                    return AppAvatar(
                      size: 100,
                      image: randomImage,
                      showIconButton: true,
                      icon: CustomIcon.editPenIcon,
                      borderWidth: 0,
                    );
                  })
                ],
              )
            ],
            CrossAxisAlignment.start),
        const AppDivider(
          thickness: 2,
          color: AppColors.blackLv8,
        ),
        textHeadline(
            'Tuliskan Review Ke Toko Ini',
            [
              AppTextField(
                hintText: 'Masukkan Review disini...',
                maxLines: 5,
                onChanged: (value) {
                  // TODO
                },
              ),
            ],
            CrossAxisAlignment.start),
        SizedBox(height: AppSizes.padding * 1.5),
      ],
    );
  }

  Widget textHeadline(String title, List<Widget> widget, CrossAxisAlignment crossAxisAlignment) {
    return AppColumnInk(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title, style: AppTextStyle.bold(size: 18)),
        SizedBox(height: AppSizes.padding),
        ...widget,
      ],
    );
  }
}
