import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dashboard/models/userinfo_listtile_model.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.modelUserInfo});
  final UserInfoListTileModel modelUserInfo;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color(0xfffafafa),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(
            modelUserInfo.assetImage,
          ),
          title: FittedBox(
            alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                modelUserInfo.title,
                style: StylesTextApp.styleSemiBold16,
              )),
          subtitle: FittedBox(
                      alignment: Alignment.centerLeft,
      
            fit: BoxFit.scaleDown,
            child: Text(
              modelUserInfo.subTitle,
              style: StylesTextApp.styleRegular12,
            ),
          ),
        ),
      ),
    );
  }
}
