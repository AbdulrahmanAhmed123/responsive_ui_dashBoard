import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/models/drawer_item.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/widgets/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int activeIndex = 0;
  List<DrawerItemModel> itemModelList = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: StylesImageApp.styleImagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transactions',
      image: StylesImageApp.styleImagesTransaction,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: StylesImageApp.styleImagesStatistics,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: StylesImageApp.styleImagesWallet,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: StylesImageApp.styleImagesInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: itemModelList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                  itemModel: itemModelList[index],
                  isActive: index == activeIndex),
            ),
          );
        });
  }
}
