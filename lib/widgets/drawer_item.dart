import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/drawer_item.dart';
import 'package:responsive_ui_dashboard/widgets/active_inactive_drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.itemModel, required this.isActive});
  final DrawerItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDrawer(itemModel: itemModel)
        : InActiveDrawer(itemModel: itemModel);
  }
}
