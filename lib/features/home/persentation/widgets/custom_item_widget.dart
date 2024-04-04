import 'package:flutter/material.dart';

class CutsomItemWidget extends StatelessWidget {
  const CutsomItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/1,
      child: Container(
        // width: 110,
        // height: 100,
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                "https://play-lh.googleusercontent.com/Ia18pn57Va9bLaPBnBFi5dK3-hhMoNTyvRnlTtuT6RfE2-dYDoqsC-poWtXVnibwax7m"),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
