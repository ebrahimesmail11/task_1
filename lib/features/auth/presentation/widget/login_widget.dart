import 'package:flutter/material.dart';
import 'package:pro_mina/features/auth/presentation/widget/container_login_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/5.3,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
            colors: [
              Colors.white.withOpacity(0.11999999731779099),
              Colors.white,
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            boxShadow(),
            // BoxShadow(
            //   color: Colors.white.withOpacity(0.11999999731779099),
            //   blurRadius: 4,
            //   offset: const Offset(0, 4),
            //   spreadRadius: 0,
            // ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  boxShadow(),
                ],
              ),
              child:const  ContainerLoginWidget(),
            ),
          ],
        ),
      ),
    );
  }

  BoxShadow boxShadow() {
    return BoxShadow(
                      color: Colors.white.withOpacity(0.11999999731779099),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    );
  }
}
