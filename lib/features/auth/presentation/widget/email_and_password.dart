import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';
import 'package:pro_mina/features/auth/presentation/widget/text_from_field_email_widget.dart';
import 'package:pro_mina/features/auth/presentation/widget/text_from_field_password_widget.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child:  Column(
        children: [
            TextFromFieldWidget(
              
              controller: context.read<LoginCubit>().emailController,
            ),
             const SizedBox(
              height: 48,
            ),
            TextFromFieldPasswordWidget(
              controller: context.read<LoginCubit>().passwordController,
            ),
        ],
      ),
    );
  }
}