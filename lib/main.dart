import 'package:flutter/material.dart';
import 'package:pro_mina/core/di/dependency_injection.dart';
import 'package:pro_mina/core/router/app_route.dart';
import 'package:pro_mina/core/router/routes.dart';



void main() {
  setupGetIt();
  runApp(ProMina(
    appRouter: AppRouter(),
  ));
}

class ProMina extends StatelessWidget {
  const ProMina({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.loginView,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
