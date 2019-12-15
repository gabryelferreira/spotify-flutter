import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/src/providers/tabs_provider.dart';
import 'package:spotify/src/screens/tab_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final _providers = [
    ChangeNotifierProvider<TabsProvider>(create: (_) => TabsProvider()),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _providers,
      child: MaterialApp(
        title: 'Spotify',
        theme: ThemeData(
          primaryColor: Color(0xFF111111),
          accentColor: Color(0xFF333333),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => TabScreen(),
        },
      ),
    );
  }
}
