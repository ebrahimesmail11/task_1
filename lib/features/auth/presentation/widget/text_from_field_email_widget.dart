import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';

import '../../../../core/theming/my_validators.dart';

class TextFromFieldWidget extends StatefulWidget {
  const TextFromFieldWidget(
      {super.key,  this.controller});

  final TextEditingController? controller;
  @override
  State<TextFromFieldWidget> createState() => _TextFromFieldWidgetState();
}

class _TextFromFieldWidgetState extends State<TextFromFieldWidget> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    _emailController = context.read<LoginCubit>().emailController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: outLineBtn(),
        enabledBorder: outLineBtn(),
        disabledBorder: outLineBtn(),
        hintText: 'User Name',
        contentPadding:
            const EdgeInsets.only(top: 8, left: 16, right: 8, bottom: 8),
      ),
      validator: (value) {
        return MyValidators.emailValidator(value);
      },
    );
  }

  OutlineInputBorder outLineBtn() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFFF7F7F7),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(22),
    );
  }
}
