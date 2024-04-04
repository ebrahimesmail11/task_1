import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_mina/core/constant/app_strings.dart';


import 'package:pro_mina/features/auth/presentation/widget/login_widget.dart';
import 'package:pro_mina/features/auth/presentation/widget/text_widget.dart';

import '../../../../core/theming/app_images.dart';

class CustomLoginView extends StatelessWidget {
  const CustomLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Column(
        children: [
          Expanded(child: Image(image: AssetImage(Assets.imagesBack), fit: BoxFit.contain)),
           TextWidget(
            text: AppStrings.appName,
                     ),
           SizedBox(
            height: 24,
          ),
           LoginWidget(),
           SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
