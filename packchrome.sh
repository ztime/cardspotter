cp -f manifest_chrome.json MagicCardSpotter/manifest.json
VERSION=`cat VERSION.txt`
sed -i "s/VERSION/${VERSION}/g" MagicCardSpotter/manifest.json
echo Packing Chrome ${VERSION}
rm -fv "MagicCardSpotterChrome${VERSION}.zip"
cd MagicCardSpotter
zip -r "../MagicCardSpotterChrome${VERSION}.zip" *
cd ..
