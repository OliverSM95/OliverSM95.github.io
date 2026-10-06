"""Check the actual release artifact before uploading it to GitHub Pages."""

from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
BUILD = ROOT / "build/web"
constants = (ROOT / "lib/utils/constants.dart").read_text()
resume = re.search(r"resumeAssetPath\s*=\s*'([^']+)'", constants).group(1)
pdf = BUILD / "assets" / resume
assert pdf.read_bytes().startswith(b"%PDF-"), f"Missing or invalid PDF: {pdf}"

gallery = re.findall(r"path: '(assets/images/gallery/[^']+)'", constants)
assert len(gallery) == 6, "Expected six homepage photos"
total = 0
for asset in gallery:
    data = (BUILD / "assets" / asset).read_bytes()
    assert data[:4] == b"RIFF" and data[8:12] == b"WEBP", asset
    total += len(data)
assert total < 1_000_000, f"Homepage gallery exceeds 1 MB: {total:,} bytes"
print(f"Release assets OK: PDF and {len(gallery)} WebP photos ({total:,} bytes)")
