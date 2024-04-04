import 'package:flutter/material.dart';

import 'package:pro_mina/features/auth/presentation/widget/custom_login_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                gradient: SweepGradient(
                  center: Alignment(-0.01, -0.79),
                  startAngle: -0.04,
                  endAngle: 8.0,
                  colors: [
                    Color(0xFFFFF1F1),
                    Color(0x91E998DA),
                    Color(0xFFDDCDFE),
                    Color(0xFFFFFCFB)
                  ],
                ),
              ),
              child: const CustomLoginView(),
            ),
          ),
        ],
      ),
    );
  }
}
