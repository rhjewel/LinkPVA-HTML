#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT=$(cd "$(dirname "$0")" && pwd)
STAGE_ROOT=$(mktemp -d)
PACKAGE_ROOT="$STAGE_ROOT/linksmm-html-template"
OUTPUT_DIR="$PROJECT_ROOT/dist"
OUTPUT_FILE="$OUTPUT_DIR/linksmm-html-template-1.0.0.zip"

cleanup() {
    rm -rf "$STAGE_ROOT"
}
trap cleanup EXIT

mkdir -p "$PACKAGE_ROOT/assets/css" "$PACKAGE_ROOT/assets/fonts" "$PACKAGE_ROOT/assets/images/placeholders" "$PACKAGE_ROOT/assets/js" "$PACKAGE_ROOT/documentation/assets/css" "$PACKAGE_ROOT/licensing" "$OUTPUT_DIR"

cp "$PROJECT_ROOT"/*.html "$PACKAGE_ROOT/"
cp "$PROJECT_ROOT/README.md" "$PROJECT_ROOT/changelog.txt" "$PACKAGE_ROOT/"
cp "$PROJECT_ROOT/assets/css/bootstrap.min.css" "$PROJECT_ROOT/assets/css/bootstrap-icons.min.css" "$PROJECT_ROOT/assets/css/swiper-bundle.min.css" "$PROJECT_ROOT/assets/css/style.css" "$PROJECT_ROOT/assets/css/style.css.map" "$PROJECT_ROOT/assets/css/style.scss" "$PACKAGE_ROOT/assets/css/"
cp "$PROJECT_ROOT/assets/fonts/bootstrap-icons.woff" "$PROJECT_ROOT/assets/fonts/bootstrap-icons.woff2" "$PACKAGE_ROOT/assets/fonts/"
cp "$PROJECT_ROOT/assets/images/favicon.svg" "$PROJECT_ROOT/assets/images/logo.svg" "$PROJECT_ROOT/assets/images/logo-white.svg" "$PACKAGE_ROOT/assets/images/"
cp "$PROJECT_ROOT/assets/images/placeholders/"*.svg "$PACKAGE_ROOT/assets/images/placeholders/"
cp "$PROJECT_ROOT/assets/js/jquery-3.7.1.min.js" "$PROJECT_ROOT/assets/js/popper.min.js" "$PROJECT_ROOT/assets/js/bootstrap.min.js" "$PROJECT_ROOT/assets/js/swiper-bundle.min.js" "$PROJECT_ROOT/assets/js/custom.js" "$PACKAGE_ROOT/assets/js/"
cp "$PROJECT_ROOT/documentation/index.html" "$PACKAGE_ROOT/documentation/"
cp "$PROJECT_ROOT/documentation/assets/css/documentation.css" "$PACKAGE_ROOT/documentation/assets/css/"
cp "$PROJECT_ROOT/licensing/credits-and-licenses.txt" "$PACKAGE_ROOT/licensing/"

for html_file in "$PACKAGE_ROOT"/*.html; do
    sed -E -i 's#assets/images/products/[^" ]+\.(webp|png|jpe?g)#assets/images/placeholders/service-placeholder.svg#g; s#assets/images/blog/[^" ]+\.(webp|png|jpe?g)#assets/images/placeholders/article-placeholder.svg#g; s#assets/images/linksmm-[^" ]+\.png#assets/images/placeholders/hero-placeholder.svg#g' "$html_file"
done

rm -f "$OUTPUT_FILE"
(cd "$STAGE_ROOT" && zip -qr "$OUTPUT_FILE" linksmm-html-template)

printf 'Created %s\n' "$OUTPUT_FILE"
