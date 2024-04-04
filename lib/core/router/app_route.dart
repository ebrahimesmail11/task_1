import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_mina/core/di/dependency_injection.dart';
import 'package:pro_mina/core/router/routes.dart';

import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';
import 'package:pro_mina/features/auth/presentation/view/login_view.dart';
import 'package:pro_mina/features/home/persentation/views/home_views.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      case Routes.homeViews:
        return MaterialPageRoute(
          builder: (_) => const HomeViews(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
