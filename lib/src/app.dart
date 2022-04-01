import 'package:flutter/material.dart';
import 'package:helpy/src/ui/initial/initial.page.dart';
import 'package:helpy/src/ui/login/login.page.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      home: LoginPage(),
    );
  }
}
