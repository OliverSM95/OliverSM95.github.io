import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

import '../theme/app_theme.dart';
import '../utils/constants.dart';

class ResumeEmbed extends StatefulWidget {
  const ResumeEmbed({super.key});

  @override
  State<ResumeEmbed> createState() => _ResumeEmbedState();
}

class _ResumeEmbedState extends State<ResumeEmbed> {
  late final String _viewType;

  @override
  void initState() {
    super.initState();

    _viewType = 'resume-pdf-${identityHashCode(this)}';

    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) {
        final iframe = web.HTMLIFrameElement()
          ..src = Uri.base.resolve(AppConstants.resumeWebPath).toString()
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.border = 'none'
          ..style.borderRadius = '16px';

        return iframe;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: width < 700 ? 650 : 900,
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.purple.withValues(alpha: .35),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.withValues(alpha: .10),
            blurRadius: 30,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: HtmlElementView(
        viewType: _viewType,
      ),
    );
  }
}