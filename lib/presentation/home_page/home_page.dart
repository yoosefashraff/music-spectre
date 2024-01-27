import '../home_page/widgets/newreleaseslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:youssef_s_application8/core/app_export.dart';
import 'package:youssef_s_application8/widgets/app_bar/appbar_title.dart';
import 'package:youssef_s_application8/widgets/app_bar/appbar_trailing_image.dart';
import 'package:youssef_s_application8/widgets/app_bar/custom_app_bar.dart';
import 'package:youssef_s_application8/widgets/custom_elevated_button.dart';
import 'package:youssef_s_application8/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Container(
                              width: 243.h,
                              margin: EdgeInsets.only(left: 49.h, right: 50.h),
                              child: Text(
                                  "Listen to music\nwithout restrictions",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 26.v),
                          CustomElevatedButton(
                              height: 40.v,
                              width: 236.h,
                              text: "Trial Version",
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainerTL20,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 41.v),
                          Text("Free for 3 months, then 12 a month",
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer),
                          SizedBox(height: 44.v),
                          _buildNewReleasesView(context),
                          SizedBox(height: 20.v),
                          _buildNewReleasesList(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Dashboard"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNewReleasesView(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("New releases", style: theme.textTheme.headlineSmall),
      GestureDetector(
          onTap: () {
            onTapTxtViewAll(context);
          },
          child: Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("View All",
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer)))
    ]);
  }

  /// Section Widget
  Widget _buildNewReleasesList(BuildContext context) {
    return SizedBox(
        height: 230.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return NewreleaseslistItemWidget();
            }));
  }

  /// Shows a modal bottom sheet with [PlaylistBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtViewAll(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => PlaylistBottomsheet(),
        isScrollControlled: true);
  }
}
