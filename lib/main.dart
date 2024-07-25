import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gethigh/api/api.dart';
import 'package:gethigh/gethigh_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  final client = initApiClient();
  runApp(GetHighApp(apiClient: client));
}


