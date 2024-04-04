import 'package:flutter/widgets.dart';
import 'package:pro_mina/features/home/persentation/widgets/custom_item_widget.dart';

class CutsomItemGridView extends StatelessWidget {
  const CutsomItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 70,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return const SizedBox(height: 100, child:  CutsomItemWidget());
      },
    );
  }
}
