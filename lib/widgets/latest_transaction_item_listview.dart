import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/userinfo_listtile_model.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionItemListView extends StatelessWidget {
  const LatestTransactionItemListView({super.key});
  static List<UserInfoListTileModel> listUserInfoListTileModel = [
    const UserInfoListTileModel(
      assetImage: StylesImageApp.styleImagesAvater,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    const UserInfoListTileModel(
      assetImage: StylesImageApp.styleImagesAvater1,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
    const UserInfoListTileModel(
      assetImage: StylesImageApp.styleImagesAvater2,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
    ),
  ];
  static ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      trackVisibility: false,
      thumbVisibility: false,
      thickness: 5.0,
      controller: scrollController,
      interactive: true,
      child: SizedBox(
        height: 80,
        child: ListView.builder(
            controller: scrollController,
            itemCount: listUserInfoListTileModel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: UserInfoListTile(
                  modelUserInfo: listUserInfoListTileModel[index],
                ),
              );
            }),
      ),
    );
  }
}
