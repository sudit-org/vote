import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vote/view_models/home_view_model.dart';
import 'package:vote/views/home_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeViewModel()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'SA'), // Arabic
          // Locale('en', ''), // English (or other supported languages)
        ],
        locale: const Locale('ar', 'SA'),
        debugShowCheckedModeBanner: false,
        title: 'Media Player',
        theme: ThemeData(
          fontFamily: "Cairo",
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeView(),
        },
      ),
    ),
  );
}
