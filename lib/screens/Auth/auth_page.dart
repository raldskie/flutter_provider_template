import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ithaaty_app/utilities/app_router.dart';

import '../../env/env.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Log In Page"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
              onPressed: () {
                context
                    .pushRoute(HomeRoute(fullName: "This is from login page"));
              },
              child: Text("Go to home")),
          const SizedBox(height: 20),
          Text(Env.ENV_TEST)
        ]));
  }
}
