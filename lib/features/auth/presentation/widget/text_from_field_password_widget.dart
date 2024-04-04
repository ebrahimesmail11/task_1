import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';

import '../../../../core/theming/my_validators.dart';

class TextFromFieldPasswordWidget extends StatefulWidget {
  const TextFromFieldPasswordWidget(
      {super.key, this.controller});
  final TextEditingController? controller;
  @override
  State<TextFromFieldPasswordWidget> createState() =>
      _TextFromFieldWidgetState();
}

class _TextFromFieldWidgetState extends State<TextFromFieldPasswordWidget> {
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: outLineBtn(),
        enabledBorder: outLineBtn(),
        disabledBorder: outLineBtn(),
        hintText: 'Password',
        contentPadding:
            const EdgeInsets.only(top: 8, left: 16, right: 8, bottom: 8),
      ),
      validator: (value) {
        return MyValidators.passwordValidator(value);
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
