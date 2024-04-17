import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dashboard/models/drawer_item.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class InActiveDrawer extends StatelessWidget {
  const InActiveDrawer({
    super.key,
    required this.itemModel,
  });

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
                  alignment: Alignment.centerLeft,

        fit: BoxFit.scaleDown,
        child: Text(
          itemModel.title,
          style: StylesTextApp.styleRegular16,
        ),
      ),
    );
  }
}

class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({
    super.key,
    required this.itemModel,
  });

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,

        child: Text(
          itemModel.title,
          style: StylesTextApp.styleBold16,
        ),
      ),
      trailing: Container(
        width: 3.8,
        decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}
