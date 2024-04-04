import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_mina/features/home/persentation/widgets/custom_button_widget.dart';
import 'package:pro_mina/features/home/persentation/widgets/custom_item_grid_view.dart';
import 'package:pro_mina/features/home/persentation/widgets/home_app_bar_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeAppBarWidget(image: "https://play-lh.googleusercontent.com/Ia18pn57Va9bLaPBnBFi5dK3-hhMoNTyvRnlTtuT6RfE2-dYDoqsC-poWtXVnibwax7m",),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 51,
              ),
            ),
            SliverToBoxAdapter(
              child: CutomButtonWidget(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            CutsomItemGridView(),
          ],
        ),
      ),
    );
  }
}
