import 'package:flutter/material.dart';

import '../data/projects.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(
        horizontal: Breakpoints.pagePadding(width),
        vertical: 90,
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
              const SizedBox(height: 12),
              Text(
                'Selected Work',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 34),
              LayoutBuilder(
                builder: (context, constraints) {
                  final columns = constraints.maxWidth >= 850 ? 2 : 1;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: projects.take(2).length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 430,
                    ),
                    itemBuilder: (_, index) {
                      return ProjectCard(project: projects[index]);
                    },
                  );
                },
              ),
              const SizedBox(height: 24),
              TextButton.icon(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/projects'),
                label: const Text('View all projects'),
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
