import 'package:flutter/material.dart';

import '../data/uofg_data.dart';
import '../models/uofg.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

class UofGPage extends StatelessWidget {
  const UofGPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    const data = uofgData;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Navbar(
                currentRoute: '/uofg',
              ),

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
                        // =====================================================
                        // PAGE HEADER
                        // =====================================================

                        Text(
                          data.eyebrow,
                          style: const TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 14),

                        Text(
                          data.title,
                          style: Theme.of(
                            context,
                          ).textTheme.headlineLarge,
                        ),

                        const SizedBox(height: 14),

                        Text(
                          data.description,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge,
                        ),

                        const SizedBox(height: 50),

                        // =====================================================
                        // DEGREE
                        //
                        // Degree is pulled out first so Co-op can appear
                        // immediately beneath it.
                        // =====================================================

                        ..._buildDegreeSection(
                          data.sections,
                        ),

                        // =====================================================
                        // CO-OP
                        // =====================================================

                        if (data.coopTerms.isNotEmpty) ...[
                          const SizedBox(height: 24),

                          _CoopPanel(
                            workTerms: data.coopTerms,
                          ),
                        ],

                        // =====================================================
                        // REMAINING SECTIONS
                        //
                        // Clubs / Classes / Sports
                        // =====================================================

                        ..._buildRemainingSections(
                          data.sections,
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

  // ---------------------------------------------------------------------------
  // DEGREE
  // ---------------------------------------------------------------------------

  List<Widget> _buildDegreeSection(
    List<UofGSection> sections,
  ) {
    final degreeSections = sections
        .where(
          (section) =>
              section.type == UofGSectionType.degree,
        )
        .toList();

    return degreeSections.map((section) {
      return _InfoPanel(
        section: section,
      );
    }).toList();
  }

  // ---------------------------------------------------------------------------
  // CLUBS / CLASSES / SPORTS
  // ---------------------------------------------------------------------------

  List<Widget> _buildRemainingSections(
    List<UofGSection> sections,
  ) {
    final remaining = sections
        .where(
          (section) =>
              section.type != UofGSectionType.degree,
        )
        .toList();

    final widgets = <Widget>[];

    for (final section in remaining) {
      widgets.add(
        const SizedBox(height: 24),
      );

      widgets.add(
        _InfoPanel(
          section: section,
        ),
      );
    }

    return widgets;
  }
}

// =============================================================================
// GENERAL INFORMATION PANEL
//
// Used for:
//   Degree
//   Clubs
//   Relevant Classes
//   Sports
// =============================================================================

class _InfoPanel extends StatelessWidget {
  final UofGSection section;

  const _InfoPanel({
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.border,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(
              alpha: .06,
            ),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -------------------------------------------------------------------
          // PANEL HEADER
          // -------------------------------------------------------------------

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.purple.withValues(
                    alpha: .12,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _iconForSection(section.type),
                  color: AppColors.neonPurple,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  section.title,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium,
                ),
              ),
            ],
          ),

          // -------------------------------------------------------------------
          // DESCRIPTION
          // -------------------------------------------------------------------

          if (section.description.trim().isNotEmpty) ...[
            const SizedBox(height: 18),

            Text(
              section.description,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge,
            ),
          ],

          // -------------------------------------------------------------------
          // ITEMS
          //
          // If the list is empty, nothing is rendered.
          // -------------------------------------------------------------------

          if (section.items.isNotEmpty) ...[
            const SizedBox(height: 20),

            ...section.items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Icon(
                        Icons.arrow_right,
                        color: AppColors.purple,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Text(
                        item,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

          // -------------------------------------------------------------------
          // IMAGES
          //
          // Only displayed when this section has images.
          // -------------------------------------------------------------------

          if (section.images.isNotEmpty) ...[
            const SizedBox(height: 28),

            _SectionImageGallery(
              images: section.images,
            ),
          ],
        ],
      ),
    );
  }
}

// =============================================================================
// CO-OP PANEL
//
// Supports any number of work terms.
// =============================================================================

class _CoopPanel extends StatelessWidget {
  final List<CoopWorkTerm> workTerms;

  const _CoopPanel({
    required this.workTerms,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.purple.withValues(
            alpha: .30,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(
              alpha: .08,
            ),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -------------------------------------------------------------------
          // CO-OP HEADER
          // -------------------------------------------------------------------

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.purple.withValues(
                    alpha: .12,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.work_outline,
                  color: AppColors.neonPurple,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Text(
                  'Co-op',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium,
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          // -------------------------------------------------------------------
          // WORK TERMS
          // -------------------------------------------------------------------

          ...workTerms.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final workTerm = entry.value;

              return Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  _WorkTerm(
                    workTerm: workTerm,
                  ),

                  // Divider between terms.
                  if (index != workTerms.length - 1) ...[
                    const SizedBox(height: 30),

                    const Divider(
                      color: AppColors.border,
                    ),

                    const SizedBox(height: 30),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// INDIVIDUAL WORK TERM
// =============================================================================

class _WorkTerm extends StatelessWidget {
  final CoopWorkTerm workTerm;

  const _WorkTerm({
    required this.workTerm,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Work Term I
        Text(
          workTerm.title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge,
        ),

        const SizedBox(height: 6),

        // COOP*1000*01
        Text(
          workTerm.courseCode,
          style: const TextStyle(
            color: AppColors.neonPurple,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 16),

        // Job title
        Text(
          workTerm.role,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 4),

        // Employer
        Text(
          workTerm.employer,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge,
        ),

        const SizedBox(height: 6),

        // Dates
        Text(
          workTerm.period,
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 14,
          ),
        ),

        // ---------------------------------------------------------------------
        // OPTIONAL WORK TERM REPORT BUTTON
        //
        // No route = no button.
        // ---------------------------------------------------------------------

        if (workTerm.reportRoute != null) ...[
          const SizedBox(height: 24),

          OutlinedButton.icon(
            onPressed: () {
              Navigator.pushNamed(
                context,
                workTerm.reportRoute!,
              );
            },
            icon: const Icon(
              Icons.article_outlined,
            ),
            label: Text(
              workTerm.reportButtonText ??
                  'View Work Term Report',
            ),
          ),
        ],
      ],
    );
  }
}

// =============================================================================
// SECTION ICON
// =============================================================================

IconData _iconForSection(
  UofGSectionType type,
) {
  switch (type) {
    case UofGSectionType.degree:
      return Icons.school_outlined;

    case UofGSectionType.clubs:
      return Icons.groups_outlined;

    case UofGSectionType.classes:
      return Icons.menu_book_outlined;

    case UofGSectionType.sports:
      return Icons.sports_outlined;
  }
}


class _SectionImageGallery extends StatelessWidget {
  final List<UofGImage> images;

  const _SectionImageGallery({
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        const spacing = 14.0;

        int columns = 1;

        if (images.length >= 3 &&
            constraints.maxWidth >= 950) {
          columns = 3;
        } else if (images.length >= 2 &&
            constraints.maxWidth >= 600) {
          columns = 2;
        }

        final imageWidth =
            (constraints.maxWidth -
                spacing * (columns - 1)) /
            columns;

        return Wrap(
          spacing: spacing,
          runSpacing: 22,
          children: images.map((image) {
            return SizedBox(
              width: imageWidth,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      image.path,
                      width: double.infinity,
                      fit: BoxFit.contain,
                      errorBuilder: (_, _, _) {
                        return const SizedBox.shrink();
                      },
                    ),
                  ),

                  if (image.caption
                      .trim()
                      .isNotEmpty) ...[
                    const SizedBox(height: 8),

                    Text(
                      image.caption,
                      style: const TextStyle(
                        color:
                            AppColors.textSecondary,
                        fontSize: 13,
                        fontStyle:
                            FontStyle.italic,
                      ),
                    ),
                  ],
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}