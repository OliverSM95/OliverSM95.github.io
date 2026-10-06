# Oliver Simm's portfolio

Flutter web portfolio deployed to GitHub Pages by `.github/workflows/deploy.yml`.

## Run and verify

```sh
flutter pub get
flutter test
flutter build web --release --base-href "/"
python3 tool/verify_web_assets.py
python3 -m http.server 8080 --directory build/web
```

Open http://localhost:8080 to check the actual release output. Check the embedded
resume and the **Open Resume** button, then scroll through the gallery at mobile
and desktop widths. Pushing to `main` triggers the existing Pages deployment.

## Resume URL

`Image.asset` and `rootBundle` accept asset keys such as `assets/images/headshot.jpg`.
A browser iframe or link needs the published URL instead: Flutter puts the complete
asset key beneath another `assets/` directory. The resume therefore lives at
`assets/assets/documents/Oliver_Simm_Resume_2026-2.pdf` in the release output.
The embed and button resolve this relative to the HTML document's base URL.

## Homepage photos

The gallery uses the checked-in WebP derivatives in `assets/images/gallery/`.
The original photographs remain available for other pages and future edits.
The derivatives are capped at 1200 pixels on their longest side, with EXIF
orientation applied before resizing. The six downloads total about 562 KB,
compared with 45.7 MB for the original files. Fixed aspect ratios keep the
layout stable while images load; repaint boundaries isolate each photo's paint.

To regenerate after replacing an original photo:

```sh
python3 -m pip install Pillow
python3 tool/optimize_gallery.py
```

Update the corresponding aspect ratios in `lib/utils/constants.dart` if the
dimensions change, then run `flutter test`. The tests check asset dimensions,
download size, and gallery layout at mobile and desktop widths. CI checks the
actual release PDF and gallery assets before uploading to Pages.
