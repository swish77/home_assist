import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/features/navigation/presentation/screens/main_navigation_screen.dart';
import 'app/theme/app_theme.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  await dotenv.load(fileName: ".env");

  runApp(ProviderScope(
      child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeAssist',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MainNavigationScreen(),
    );
  }
}