import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

class UofGPage extends StatelessWidget {
  const UofGPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Navbar(currentRoute: '/uofg'),
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
                          'UNIVERSITY OF GUELPH',
                          style: TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Academic Life',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 14),
                        Text(
                          'Degree, academics, clubs, university involvement, and athletics.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 50),

                        const _InfoPanel(
                          icon: Icons.school_outlined,
                          title: 'Degree',
                          description: 'Degree title, major, academic focus, expected graduation, and academic goals.',
                          items: [
                            'Program / major',
                            'Academic focus',
                            'Honours / achievements',
                          ],
                        ),

                        const SizedBox(height: 24),

                        const _InfoPanel(
                          icon: Icons.groups_outlined,
                          title: 'Clubs',
                          description: 'University clubs, organizations, leadership roles, and involvement.',
                          items: [
                            'Club / organization',
                            'Position / involvement',
                            'Contribution',
                          ],
                        ),

                        const SizedBox(height: 24),

                        const _InfoPanel(
                          icon: Icons.menu_book_outlined,
                          title: 'Relevant Classes',
                          description: 'Courses most relevant to your professional and academic interests.',
                          items: [
                            'Course / subject',
                            'Course / subject',
                            'Course / subject',
                          ],
                        ),

                        const SizedBox(height: 24),

                        const _InfoPanel(
                          icon: Icons.sports_outlined,
                          title: 'Sports',
                          description: 'University athletics, intramurals, recreational sports, and related involvement.',
                          items: [
                            'Sport / team',
                            'Role / involvement',
                            'Achievement / experience',
                          ],
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

class _InfoPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String> items;

  const _InfoPanel({
    required this.icon,
    required this.title,
    required this.description,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .06),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.purple.withValues(alpha: .12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: AppColors.neonPurple),
              ),
              const SizedBox(width: 16),
              Text(title, style: Theme.of(context).textTheme.headlineMedium),
            ],
          ),
          const SizedBox(height: 18),
          Text(description, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const Icon(Icons.arrow_right, color: AppColors.purple),
                  const SizedBox(width: 8),
                  Expanded(child: Text(item)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
