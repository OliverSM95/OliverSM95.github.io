import 'package:flutter/material.dart';

import '../data/projects.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';
import '../widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Navbar(currentRoute: '/projects'),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Breakpoints.pagePadding(width),
                  vertical: 80,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: Breakpoints.maxContentWidth,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PROJECTS',
                          style: TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Project Gallery',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Technical, professional, academic, and personal projects with descriptions, images, tools, and outcomes.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 50),

                        LayoutBuilder(
                          builder: (context, constraints) {
                            int columns = 1;

                            if (constraints.maxWidth >= 1100) {
                              columns = 3;
                            } else if (constraints.maxWidth >= 700) {
                              columns = 2;
                            }

                            return Wrap(
                              spacing: 22,
                              runSpacing: 22,
                              children: projects.map((project) {
                                return SizedBox(
                                  width:
                                      (constraints.maxWidth -
                                          22 * (columns - 1)) /
                                      columns,
                                  child: ProjectCard(project: project),
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
