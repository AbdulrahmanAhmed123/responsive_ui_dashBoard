import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/drawer_item.dart';
import 'package:responsive_ui_dashboard/models/userinfo_listtile_model.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/widgets/active_inactive_drawer.dart';
import 'package:responsive_ui_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_ui_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              modelUserInfo: UserInfoListTileModel(
                assetImage: StylesImageApp.styleImagesAvater2,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 8,
          )),
          const DrawerItemList(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawer(
                  itemModel: DrawerItemModel(
                    title: 'Settings System',
                    image: StylesImageApp.styleImagesSetting,
                  ),
                ),
                InActiveDrawer(
                  itemModel: DrawerItemModel(
                    title: 'Logout ACCOUNT',
                    image: StylesImageApp.styleImagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
