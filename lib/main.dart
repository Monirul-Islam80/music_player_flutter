import 'package:flutter/material.dart';
import 'package:music_player_flutter/models/playlist_provider.dart';
import 'package:music_player_flutter/pages/homepage.dart';
import 'package:music_player_flutter/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlaylistProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
