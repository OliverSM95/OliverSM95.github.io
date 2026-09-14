import 'package:flutter/material.dart';

import '../data/coop_report_data.dart';
import '../models/coop_report.dart';
import '../theme/app_theme.dart';
import '../utils/breakpoints.dart';
import '../widgets/footer.dart';
import '../widgets/navbar.dart';

class CoopPage extends StatelessWidget {
  const CoopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    const report = workTermOneReport;

    return Scaffold(
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Co-op is intentionally NOT a navbar destination.
              const Navbar(currentRoute: ''),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Breakpoints.pagePadding(width),
                  vertical: 70,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      // Narrower than the rest of the portfolio because this
                      // page is intended for long-form reading.
                      maxWidth: 900,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // =====================================================
                        // BACK TO EXPERIENCE
                        // =====================================================

                        TextButton.icon(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              '/experience',
                            );
                          },
                          icon: const Icon(Icons.arrow_back),
                          label: const Text('Back to Experience'),
                        ),

                        const SizedBox(height: 40),

                        // =====================================================
                        // REPORT HEADER
                        // =====================================================
                        const Text(
                          'CO-OP WORK TERM REPORT',
                          style: TextStyle(
                            color: AppColors.neonPurple,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 16),

                        Text(
                          report.workTerm,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          report.courseCode,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        const SizedBox(height: 30),

                        // =====================================================
                        // EMPLOYER / WORK TERM INFORMATION
                        // =====================================================
                        _ReportMetadata(report: report),

                        // =====================================================
                        // OPTIONAL HERO IMAGE
                        //
                        // If heroImage == null, this entire section disappears.
                        // =====================================================
                        if (report.heroImage != null) ...[
                          const SizedBox(height: 50),
                          _ReportImage(image: report.heroImage!, hero: true),
                        ],

                        const SizedBox(height: 80),

                        // =====================================================
                        // INTRODUCTION
                        // =====================================================
                        _ReportSection(
                          title: 'Introduction',
                          paragraphs: report.introduction,
                          images: report.introductionImages,
                        ),

                        // =====================================================
                        // EMPLOYER
                        // =====================================================
                        _ReportSection(
                          title: 'About the Employer',
                          paragraphs: report.employerInformation,
                          images: report.employerImages,
                        ),

                        // =====================================================
                        // GOALS
                        //
                        // Any number of goals can be added to the data file.
                        // =====================================================
                        if (report.goals.isNotEmpty)
                          _GoalsSection(goals: report.goals),

                        // =====================================================
                        // JOB DESCRIPTION
                        // =====================================================
                        _ReportSection(
                          title: 'Job Description',
                          paragraphs: report.jobDescription,
                          images: report.jobImages,
                        ),

                        // =====================================================
                        // WORK / PROJECTS
                        // =====================================================
                        const _StandaloneSectionHeader(
                          title: 'Work & Projects',
                        ),

                        const SizedBox(height: 32),

                        _ReportSection(
                          title: 'New Vendor Request Application',
                          paragraphs: [
                            report.workProjects[0],
                          ],
                        ),

                        _ReportSection(
                          title: 'Special Shipment Form Application',
                          paragraphs: [
                            report.workProjects[1],
                          ],
                        ),
                        if (report.workProjectImages.isNotEmpty) ...[
                          const SizedBox(height: 8),

                          _ImageGallery(
                            images: report.workProjectImages,
                          ),

                          const SizedBox(height: 80),
                        ],

                        // =====================================================
                        // REFLECTION
                        // =====================================================
                        /*
                        _ReportSection(
                          title: 'What I Learned',
                          paragraphs: report.whatILearned,
                          images: report.learningImages,
                        ),*/

                        // =====================================================
                        // CONCLUSION
                        // =====================================================
                        _ReportSection(
                          title: 'Conclusion',
                          paragraphs: report.conclusion,
                          images: report.conclusionImages,
                        ),

                        // =====================================================
                        // ACKNOWLEDGMENTS
                        // =====================================================
                        _ReportSection(
                          title: 'Acknowledgments',
                          paragraphs: report.acknowledgments,
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

// =============================================================================
// STANDARD REPORT SECTION
//
// Handles:
//   heading
//   0-n paragraphs
//   0-n images
//
// Empty paragraphs/images are simply not rendered.
// =============================================================================

class _ReportSection extends StatelessWidget {
  final String title;
  final List<String> paragraphs;
  final List<CoopReportImage> images;

  const _ReportSection({
    required this.title,
    this.paragraphs = const [],
    this.images = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Purple divider above heading.
          const _SectionMarker(),

          const SizedBox(height: 14),

          Text(title, style: Theme.of(context).textTheme.headlineMedium),

          // Only create paragraph spacing if there is actual text.
          if (_hasParagraphs) ...[
            const SizedBox(height: 26),
            _ParagraphList(paragraphs: paragraphs),
          ],

          // Only create image spacing if images exist.
          if (images.isNotEmpty) ...[
            const SizedBox(height: 32),
            _ImageGallery(images: images),
          ],
        ],
      ),
    );
  }

  bool get _hasParagraphs {
    return paragraphs.any((paragraph) => paragraph.trim().isNotEmpty);
  }
}

// =============================================================================
// GOALS SECTION
// =============================================================================

class _GoalsSection extends StatelessWidget {
  final List<CoopGoal> goals;

  const _GoalsSection({required this.goals});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionMarker(),

          const SizedBox(height: 14), // Spacing between divider and heading.

          Text(
            'Goals & Learning Outcomes',
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          const SizedBox(height: 30), // Spacing between heading and first goal.
            Text(
            'Technology Expectations & Expected Learning Outcomes',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(
            '''When I accepted my position at the Magna Exteriors factory, Polycon Industries, one of my primary goals was to expand my experience beyond backend development and become a stronger full-stack developer. In my previous role at Blue Flamingo, my work was primarily backend development. This new role excited me because I had little front-end development experience, and I wanted a challenge to force me into learning the other half of full-stack. In addition, I wanted to improve my SQL skills and become more familiar with the Microsoft development ecosystem. Moreover, I wanted to improve my C# and object-oriented programming skills, both because they are useful in full-stack development and because I have an interest in building Unity-based games as a hobby in the future. Another area I wanted to improve was my understanding of how full-stack applications are structured in industry. A key concept in this is the Model-View-Controller (MVC) structure, which I was first introduced to in my Software Systems Development and Integration class, CIS*2750, and I wanted to apply it in the future to strengthen my understanding and put my learning in practice.

 Outside of the technical side, I also wanted to get more comfortable running meetings, leading requirements sessions, solving problems independently, and understanding how software projects are handled in a professional environment. I knew that these were important skills I would need in future development roles, especially since modern developers have to do more than just write code. They need to understand what users actually need, communicate with different departments, and work across multiple parts of an application. The technologies used at Polycon gave me a good opportunity to work toward these goals. I was especially interested in learning more about Microsoft’s Power Platform, including Power Apps, Power Automate, and Power BI, since the Microsoft ecosystem is so widely used in industry. Before starting the job, I actually thought Power Apps were a type of application used to power or control parts of the factory. That assumption changed pretty quickly when I started working on one of my first projects and realized it was Microsoft’s low-code platform used to build business applications in an efficient and short manner.

Finally,  I wanted to get experience with technologies such as Angular, SQL, C#, and Ignition MES. These gave me exposure to frontend development, databases, traditional programming, and software used directly in a manufacturing environment. By the end of the work term, I had become especially comfortable with Power Apps and Power Automate and had a much better understanding of how they could be used to solve actual business problems. Overall, this position helped me move away from being mainly backend-focused and gave me much more confidence working in the complete full-stack ecosystem. As well, this role helped me build a strong foundation in industry standards for data storage, increased my confidence in running my own projects and working cross-functionally, and gave me strong insight and interest in how IT plays an important role in manufacturing environments. 

''',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.7),
          ),

          const SizedBox(height: 30),
          ...goals.asMap().entries.map((entry) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: entry.key == goals.length - 1 ? 0 : 24,
              ),
              child: _GoalBlock(goal: entry.value),
            );
          }),
        ],
      ),
    );
  }
}

// =============================================================================
// INDIVIDUAL GOAL
// =============================================================================

class _GoalBlock extends StatelessWidget {
  final CoopGoal goal;

  const _GoalBlock({required this.goal});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.of(context).size.width < Breakpoints.mobile;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(mobile ? 20 : 28),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: mobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _GoalNumber(number: goal.number),
                const SizedBox(height: 20),
                _GoalContent(goal: goal),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _GoalNumber(number: goal.number),
                const SizedBox(width: 24),
                Expanded(child: _GoalContent(goal: goal)),
              ],
            ),
    );
  }
}

class _GoalNumber extends StatelessWidget {
  final String number;

  const _GoalNumber({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.purple.withValues(alpha: .12),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.purple.withValues(alpha: .25)),
      ),
      child: Text(
        number,
        style: const TextStyle(
          color: AppColors.neonPurple,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _GoalContent extends StatelessWidget {
  final CoopGoal goal;

  const _GoalContent({required this.goal});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Goal title
        if (goal.title.trim().isNotEmpty)
          Text(goal.title, style: Theme.of(context).textTheme.titleLarge),

        if (goal.goal.trim().isNotEmpty) ...[
          const SizedBox(height: 22),
          const _GoalLabel('GOAL'),
          const SizedBox(height: 8),
          _GoalText(goal.goal),
        ],

        if (goal.type.trim().isNotEmpty) ...[
          const SizedBox(height: 22),
          const _GoalLabel('Type'),
          const SizedBox(height: 8),
          _GoalText(goal.type),
        ],

        if (goal.actionPlan.trim().isNotEmpty) ...[
          const SizedBox(height: 22),
          const _GoalLabel('Action Plan'),
          const SizedBox(height: 8),
          _GoalText(goal.actionPlan),
        ],
        if (goal.measureOfSuccess.trim().isNotEmpty) ...[
          const SizedBox(height: 22),
          const _GoalLabel('Measure of Success'),
          const SizedBox(height: 8),
          _GoalText(goal.measureOfSuccess),
        ],

        if (goal.outcome.trim().isNotEmpty) ...[
          const SizedBox(height: 26),
          const _GoalLabel('OUTCOME'),
          const SizedBox(height: 8),
          _GoalText(goal.outcome),
        ],

        if (goal.reflection.trim().isNotEmpty) ...[
          const SizedBox(height: 26),
          const _GoalLabel('REFLECTION'),
          const SizedBox(height: 8),
          _GoalText(goal.reflection),
        ],

        if (goal.images.isNotEmpty) ...[
          const SizedBox(height: 28),
          _ImageGallery(images: goal.images),
        ],
      ],
    );
  }
}

class _GoalLabel extends StatelessWidget {
  final String text;

  const _GoalLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.neonPurple,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: 2,
      ),
    );
  }
}

class _GoalText extends StatelessWidget {
  final String text;

  const _GoalText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.trim(),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.7),
    );
  }
}

// =============================================================================
// REPORT PARAGRAPHS
// =============================================================================

class _ParagraphList extends StatelessWidget {
  final List<String> paragraphs;

  const _ParagraphList({required this.paragraphs});

  @override
  Widget build(BuildContext context) {
    final validParagraphs = paragraphs
        .where((paragraph) => paragraph.trim().isNotEmpty)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: validParagraphs
          .asMap()
          .entries
          .map(
            (entry) => Padding(
              padding: EdgeInsets.only(
                bottom: entry.key == validParagraphs.length - 1 ? 0 : 22,
              ),
              child: Text(
                entry.value.trim(),
                style: Theme.of(context).textTheme.bodyLarge
                    ?.copyWith(height: 1.8),
              ),
            ),
          )
          .toList(),
    );
  }
}

// =============================================================================
// IMAGE GALLERY
//
// Automatically supports any number of images.
//
// 1 image:
//   full width
//
// 2+ images:
//   responsive 1/2-column layout
// =============================================================================

class _ImageGallery extends StatelessWidget {
  final List<CoopReportImage> images;

  const _ImageGallery({required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }

    if (images.length == 1) {
      return _ReportImage(image: images.first);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        const spacing = 16.0;

        final columns = constraints.maxWidth >= 650 ? 2 : 1;

        final imageWidth =
            (constraints.maxWidth - spacing * (columns - 1)) / columns;

        return Wrap(
          spacing: spacing,
          runSpacing: 24,
          children: images.map((image) {
            return SizedBox(
              width: imageWidth,
              child: _ReportImage(image: image),
            );
          }).toList(),
        );
      },
    );
  }
}

// =============================================================================
// INDIVIDUAL REPORT IMAGE
// =============================================================================

class _ReportImage extends StatelessWidget {
  final CoopReportImage image;
  final bool hero;

  const _ReportImage({required this.image, this.hero = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(hero ? 22 : 16),
          child: Image.asset(
            image.path,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) {
              // If a path is invalid, don't show a large
              // broken/black image box.
              return const SizedBox.shrink();
            },
          ),
        ),

        if (image.caption.trim().isNotEmpty) ...[
          const SizedBox(height: 10),

          Text(
            image.caption,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 13,
              fontStyle: FontStyle.italic,
              height: 1.4,
            ),
          ),
        ],
      ],
    );
  }
}

// =============================================================================
// REPORT HEADER METADATA
// =============================================================================

class _ReportMetadata extends StatelessWidget {
  final CoopReport report;

  const _ReportMetadata({required this.report});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(report.role, style: Theme.of(context).textTheme.titleLarge),

          const SizedBox(height: 8),

          Text(
            report.employer,
            style: const TextStyle(
              color: AppColors.neonPurple,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 28,
            runSpacing: 14,
            children: [
              _MetadataItem(
                icon: Icons.calendar_today_outlined,
                text: report.dates,
              ),
              _MetadataItem(
                icon: Icons.location_on_outlined,
                text: report.location,
              ),
              _MetadataItem(
                icon: Icons.school_outlined,
                text: report.university,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetadataItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MetadataItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 17, color: AppColors.neonPurple),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
      ],
    );
  }
}

// =============================================================================
// PURPLE SECTION DIVIDER
// =============================================================================

class _SectionMarker extends StatelessWidget {
  const _SectionMarker();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 3,
      decoration: BoxDecoration(
        color: AppColors.neonPurple,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .45),
            blurRadius: 12,
          ),
        ],
      ),
    );
  }
}


class _StandaloneSectionHeader extends StatelessWidget {
  final String title;

  const _StandaloneSectionHeader({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionMarker(),

        const SizedBox(height: 14),

        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}