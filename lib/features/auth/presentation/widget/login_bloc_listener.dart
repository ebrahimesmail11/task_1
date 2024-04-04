import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/core/helpers/extention.dart';
import 'package:pro_mina/core/router/routes.dart';
import 'package:pro_mina/core/theming/app_styles.dart';

import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }, success: (loginRepo) {
          context.pop();
          context.pushNamed(Routes.homeViews);
        }, error: (error) {
          setupErrorState(context, error);
        });
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppStyles.styleRegular16(context),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppStyles.styleRegular16(context),
            ),
          ),
        ],
      ),
    );
  }
}
