import 'package:flutter/material.dart';
import 'package:pro_mina/core/constant/app_strings.dart';
import 'package:pro_mina/core/theming/app_styles.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        AppStrings.welcome,
        textAlign: TextAlign.start,
        maxLines: 2,
        style: AppStyles.styleRegular32(context),
      ),
      InkWell(
        onTap: () {},
        child: ClipRect(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              // color: Theme.of(context).cardColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.background,
                width: 3,
              ),
              image:  DecorationImage(
                image: NetworkImage(
                    image,),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
