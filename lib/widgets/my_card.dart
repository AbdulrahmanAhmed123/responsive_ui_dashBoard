import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dashboard/utlies/images_app.dart';
import 'package:responsive_ui_dashboard/utlies/styles_app.dart';
import 'package:responsive_ui_dashboard/widgets/custom_container_back_ground.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: CustomContainerBackGround(
          image: StylesImageApp.styleImagesMask,
          color: const Color(0xff4eb7f2),
          padding: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                horizontalTitleGap: 0,
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                title: const Text('Name card'),
                titleTextStyle:
                    StylesTextApp.styleRegular16(context).copyWith(color: Colors.white),
                trailing: SvgPicture.asset(StylesImageApp.styleImagesGallery),
                subtitle: const Text('Syah Bandi'),
                subtitleTextStyle: StylesTextApp.styleMedium20(context),
              ),
              const Expanded(
                child:   SizedBox(
              
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text(
                     '0918 8124 0042 8129',
                     style: StylesTextApp.styleSemiBold24(context)
                         .copyWith(color: Colors.white),
                                         ),
                    Text(
                      '12/20 -124',
                      style: StylesTextApp.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 24,
                ),
              ),
            ],
          ),
        ));
  }
}
