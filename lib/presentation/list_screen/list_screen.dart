import '../list_screen/widgets/playlistlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:youssef_s_application8/core/app_export.dart';
import 'package:youssef_s_application8/widgets/app_bar/appbar_leading_image.dart';
import 'package:youssef_s_application8/widgets/app_bar/appbar_title.dart';
import 'package:youssef_s_application8/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youssef_s_application8/widgets/app_bar/custom_app_bar.dart';
import 'package:youssef_s_application8/widgets/custom_icon_button.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                child: Column(children: [
                  _buildMusicDetails(context),
                  SizedBox(height: 18.v),
                  _buildActions(context),
                  Spacer(flex: 39),
                  _buildPlaylistList(context),
                  Spacer(flex: 60)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Top Playlists"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildMusicDetails(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgPlaylistThumbnail,
          height: 136.adaptSize,
          width: 136.adaptSize,
          radius: BorderRadius.circular(68.h)),
      SizedBox(height: 7.v),
      GestureDetector(
          onTap: () {
            onTapTxtRenaissance(context);
          },
          child:
              Text("Renaissance", style: CustomTextStyles.headlineSmallMedium)),
      SizedBox(height: 10.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("843 tracks", style: theme.textTheme.bodyLarge),
        Opacity(
            opacity: 0.648,
            child: Container(
                height: 3.adaptSize,
                width: 3.adaptSize,
                margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 6.v),
                decoration: BoxDecoration(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.58),
                    borderRadius: BorderRadius.circular(1.h)))),
        Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("23 hours", style: theme.textTheme.bodyLarge))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(imagePath: ImageConstant.imgQuestion))),
      Padding(
          padding: EdgeInsets.only(left: 26.h),
          child: CustomIconButton(
              height: 69.adaptSize,
              width: 69.adaptSize,
              child: CustomImageView())),
      Padding(
          padding: EdgeInsets.only(left: 26.h, top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(
                  imagePath: ImageConstant.imgBookmarkOnprimarycontainer)))
    ]);
  }

  /// Section Widget
  Widget _buildPlaylistList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 17.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return PlaylistlistItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the artistScreen when the action is triggered.
  onTapTxtRenaissance(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.artistScreen);
  }
}
