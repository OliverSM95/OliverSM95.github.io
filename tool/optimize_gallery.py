"""Regenerate homepage derivatives: python -m pip install Pillow; python tool/optimize_gallery.py."""

from pathlib import Path

from PIL import Image, ImageOps

ROOT = Path(__file__).resolve().parents[1]
SOURCES = {
    "altaf": "Altaf.jpeg",
    "elvis": "Elvis.jpeg",
    "puppy-yoga": "PuppYoga.jpeg",
    "christmas": "Christmas.png",
    "gdg-team": "school/GDGteam.jpeg",
    "polycon-golf": "coop/polycon-golf.JPG",
}


def main():
    output = ROOT / "assets/images/gallery"
    output.mkdir(parents=True, exist_ok=True)
    for name, source in SOURCES.items():
        with Image.open(ROOT / "assets/images" / source) as original:
            image = ImageOps.exif_transpose(original).convert("RGB")
            image.thumbnail((1200, 1200), Image.Resampling.LANCZOS)
            target = output / f"{name}.webp"
            image.save(target, "WEBP", quality=82, method=6)
            print(f"{target.name}: {image.width} x {image.height}, {target.stat().st_size:,} bytes")
    print("If dimensions changed, update aboutGallery aspect ratios in lib/utils/constants.dart.")


if __name__ == "__main__":
    main()
