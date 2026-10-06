import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oliver_simm_personal_portfolio/utils/constants.dart';
import 'package:oliver_simm_personal_portfolio/widgets/about_gallery.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'resume URL includes the bundle prefix and respects the hosting base',
    () async {
      for (final base in [
        'https://example.com/',
        'https://example.com/portfolio/',
      ]) {
        expect(
          Uri.parse(base).resolve(AppConstants.resumeWebPath).toString(),
          '${base}assets/assets/documents/Oliver_Simm_Resume_2026-2.pdf',
        );
      }
      final pdf = await rootBundle.load(AppConstants.resumeAssetPath);
      expect(String.fromCharCodes(pdf.buffer.asUint8List(0, 5)), '%PDF-');
    },
  );

  test('gallery assets fit the download, decode, and layout budgets', () async {
    var totalBytes = 0;
    for (final photo in AppConstants.aboutGallery) {
      final data = await rootBundle.load(photo.path);
      totalBytes += data.lengthInBytes;
      final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
      final frame = await codec.getNextFrame();
      expect(frame.image.width, lessThanOrEqualTo(1200));
      expect(frame.image.height, lessThanOrEqualTo(1200));
      expect(
        frame.image.width / frame.image.height,
        closeTo(photo.aspectRatio, 0.00001),
      );
      frame.image.dispose();
      codec.dispose();
    }
    expect(totalBytes, lessThan(1000000));
  });

  for (final width in [390.0, 1200.0]) {
    testWidgets('gallery reserves image sizes at viewport width $width', (
      tester,
    ) async {
      await tester.binding.setSurfaceSize(Size(width, 900));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: SingleChildScrollView(child: AboutGallery())),
        ),
      );
      final images = find.byType(Image);
      expect(images, findsNWidgets(6));
      final expectedWidth = width >= 800 ? (width - 24) / 3 : width;
      for (var i = 0; i < 6; i++) {
        final size = tester.getSize(images.at(i));
        expect(size.width, closeTo(expectedWidth, 0.01));
        expect(
          size.height,
          closeTo(
            expectedWidth / AppConstants.aboutGallery[i].aspectRatio,
            0.01,
          ),
        );
      }
      expect(tester.takeException(), isNull);
    });
  }
}
