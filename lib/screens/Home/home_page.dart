import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ithaaty_app/enums/loading_enums.dart';
import 'package:ithaaty_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../utilities/is_loading.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  final String fullName;
  const HomePage({super.key, required this.fullName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthProvider>().getUserData();
      context.read<AuthProvider>().getProducts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = context.watch<AuthProvider>();

    return Scaffold(
        appBar: AppBar(title: const Text("Home Page")),
        body: Column(children: [
          Text(widget.fullName),
          if (isLoadingMultiple(
              toMatch: [Loading.userData], active: authProvider.loading))
            const CircularProgressIndicator()
          else
            Text(authProvider.userData.toString()),
          if (isLoadingMultiple(
              toMatch: [Loading.productList], active: authProvider.loading))
            const CircularProgressIndicator()
          else
            ...authProvider.productList.map((e) => Text(e.title))
        ]));
  }
}
