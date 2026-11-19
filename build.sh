#!/bin/zsh
set -euo pipefail
cd "${0:A:h}"
python3 - <<'ASSETS'
import pathlib,base64
r=pathlib.Path('.')
for name in ['moss.png','Mellow.icns']:
 parts=sorted((r/'assets-encoded').glob(name+'.*.txt'))
 if parts:(r/'Resources'/name).write_bytes(base64.b64decode(''.join(p.read_text() for p in parts)))
ASSETS
APP="$PWD/build/Sneakkkkk.app"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"
clang -mmacosx-version-min=12.0 -arch arm64 -arch x86_64 -fobjc-arc -Wno-incompatible-pointer-types Sources/main.m -o "$APP/Contents/MacOS/Sneakkkkk" -framework Cocoa -framework WebKit -framework Carbon
cp Resources/moss.png Resources/Mellow.icns "$APP/Contents/Resources/"
cp Resources/index.html "$APP/Contents/Resources/index.html"
cat > "$APP/Contents/Info.plist" <<'PLIST'
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"><plist version="1.0"><dict><key>CFBundleExecutable</key><string>Sneakkkkk</string><key>CFBundleIdentifier</key><string>com.mellow.notes</string><key>CFBundleName</key><string>Sneakkkkk</string><key>CFBundleIconFile</key><string>Mellow.icns</string><key>CFBundleVersion</key><string>1</string><key>CFBundleShortVersionString</key><string>0.1.0</string><key>NSHighResolutionCapable</key><true/><key>LSMinimumSystemVersion</key><string>12.0</string></dict></plist>
PLIST
codesign --force --deep --sign - "$APP"
echo "Built: $APP"
