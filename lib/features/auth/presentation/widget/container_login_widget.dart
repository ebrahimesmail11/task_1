import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/core/helpers/extention.dart';
import 'package:pro_mina/features/auth/data/models/login_request_body.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';
import 'package:pro_mina/features/auth/presentation/widget/elvated_btn_widget.dart';
import 'package:pro_mina/features/auth/presentation/widget/email_and_password.dart';
import 'package:pro_mina/features/auth/presentation/widget/text_login_widget.dart';

import '../../../../core/constant/app_strings.dart';
import '../../../../core/router/routes.dart';

class ContainerLoginWidget extends StatelessWidget {
  const ContainerLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextLoginWidget(text: AppStrings.login),
        const SizedBox(
          height: 48,
        ),
      const EmailAndPassword(),
        const SizedBox(
          height: 48,
        ),
        ElvatedBtnWidget(
          text: AppStrings.submit,
          onPressed: () {
            valudateThenDoLogin(context);
            context.pushNamed(Routes.homeViews);
          },
        ),
      ],
    );
  }
}

void valudateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text),);
  }
}
