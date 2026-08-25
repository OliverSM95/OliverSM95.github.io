import 'package:flutter/material.dart';

import 'pages/experience_page.dart';
import 'pages/home_page.dart';
import 'pages/projects_page.dart';
import 'pages/uofg_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oliver Simm',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/experience': (_) => const ExperiencePage(),
        '/projects': (_) => const ProjectsPage(),
        '/uofg': (_) => const UofGPage(),
      },
    );
  }
}
