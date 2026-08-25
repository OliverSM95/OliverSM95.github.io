import 'package:flutter/material.dart';

import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/experience_section.dart';
import '../sections/hero_section.dart';
import '../sections/projects_section.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Navbar(currentRoute: '/'),
              HeroSection(),
              AboutSection(),
              ExperienceSection(),
              ProjectsSection(),
              ContactSection(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
