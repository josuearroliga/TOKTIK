import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('TOKTIK'),
          ),
          body: const Center(
            child: Text(
              'TokTik',
            ),
          ),
        ),
      ),
    );
  }
}
