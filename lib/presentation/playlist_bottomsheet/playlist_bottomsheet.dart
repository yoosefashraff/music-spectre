import '../playlist_bottomsheet/widgets/playlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:youssef_s_application8/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PlaylistBottomsheet extends StatelessWidget {
  const PlaylistBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 729.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 729.v,
                width: double.maxFinite,
              ),
            ),
            _buildList(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 8,
      itemBuilder: (context, index) {
        return PlaylistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.445,
              child: Container(
                height: 5.v,
                width: 35.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.v),
            _buildPlaylist(context),
          ],
        ),
      ),
    );
  }
}
