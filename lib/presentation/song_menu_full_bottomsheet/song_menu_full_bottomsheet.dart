import '../song_menu_full_bottomsheet/widgets/options_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:youssef_s_application8/core/app_export.dart';
import 'package:youssef_s_application8/widgets/custom_icon_button.dart';

class SongMenuFullBottomsheet extends StatelessWidget {
  const SongMenuFullBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.black
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL29),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 5.v,
              width: 35.h,
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(2.h))),
          SizedBox(height: 23.v),
          _buildSixty(context),
          SizedBox(height: 27.v),
          _buildOptions(context),
          SizedBox(height: 44.v)
        ]));
  }

  /// Section Widget
  Widget _buildSongDetails(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgThumbnail,
          height: 65.adaptSize,
          width: 65.adaptSize,
          radius: BorderRadius.circular(4.h)),
      SizedBox(height: 9.v),
      Text("Renaissance", style: theme.textTheme.titleMedium),
      SizedBox(height: 5.v),
      SizedBox(
          width: 138.h,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("Podval Caplella",
                        style: theme.textTheme.bodyMedium)),
                Opacity(
                    opacity: 0.648,
                    child: Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.58),
                            borderRadius: BorderRadius.circular(1.h)))),
                Text("3:43", style: theme.textTheme.bodyMedium)
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 81.v),
              child: CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgBookmark))),
          _buildSongDetails(context),
          Padding(
              padding: EdgeInsets.only(bottom: 81.v),
              child: CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(imagePath: ImageConstant.imgQuestion)))
        ]);
  }

  /// Section Widget
  Widget _buildOptions(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 8.v);
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return OptionsItemWidget(onTapImgAddtoPlaylist: () {
            onTapImgAddtoPlaylist(context);
          });
        });
  }

  /// Navigates back to the previous screen.
  onTapImgAddtoPlaylist(BuildContext context) {
    Navigator.pop(context);
  }
}
