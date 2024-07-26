import 'package:flutter/material.dart';
import 'package:gethigh/api/api.dart';
import 'package:gethigh/router/router.dart';
import 'package:gethigh/ui/ui.dart';

class GetHighApp extends StatefulWidget {
  const GetHighApp({super.key, required this.apiClient});

  final GetHighClient apiClient;
  @override
  State<GetHighApp> createState() => _GetHighAppState();
}

class _GetHighAppState extends State<GetHighApp> {
  // This widget is the root of your application.
  final _router = AppRouter();
  final _dark = true;

  @override
  void initState() {
    widget.apiClient.getUsers().then((res) {
      print(res);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GetHigh',
      theme: themeData,
      routerConfig: _router.config()
    );
  }
}
