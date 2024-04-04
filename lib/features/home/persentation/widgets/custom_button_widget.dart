import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_mina/core/constant/app_strings.dart';
import 'package:pro_mina/core/helpers/extention.dart';
import 'package:pro_mina/core/theming/app_images.dart';

import 'package:pro_mina/features/home/persentation/widgets/custom_elvated_btn.dart';


import '../../../../core/router/routes.dart';


class CutomButtonWidget extends StatelessWidget {
  const CutomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomElvatedBtn(
            text: AppStrings.logout,
            icon: Assets.imagesLogout,
            onPressed: () {
              context.pushNamed(Routes.loginView);
            }),
        CustomElvatedBtn(
            text: AppStrings.upload,
            icon: Assets.imagesUpload,
            onPressed: () async{
             await imagePickerDialog(context: context, cameraFCT: (){}, galleryFCT: (){});
            }),
      ],
    );
  }
  static Future<void> imagePickerDialog({
    required BuildContext context,
    required Function cameraFCT,
    required Function galleryFCT,
  }) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      galleryFCT();
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                    icon: SvgPicture.asset(Assets.imagesGallery),
                    label: const Text("Gallery"),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      cameraFCT();
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                    icon: SvgPicture.asset(Assets.imagesCamera),
                    label: const Text("Camera"),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
