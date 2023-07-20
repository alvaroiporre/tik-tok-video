import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tik_tok_video/config/theme/app_theme.dart';
import 'package:tik_tok_video/presentation/providers/discover_provider.dart';
import 'package:tik_tok_video/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          //lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage()
        ),
      ],
      child: MaterialApp(
        title: 'TikTok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}