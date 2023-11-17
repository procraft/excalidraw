set -ex

TGZ_NAME="jitsi-excalidraw-0.0.16.$(date +%s).tgz"

yarn
cd src/packages/excalidraw
yarn
yarn run build:umd
rm -rf package
mkdir package
cp -r {dist,types,README.md,main.js,package.json} package/
tar -czf $TGZ_NAME --exclude=$TGZ_NAME ./package
cd ../../..
rm -rf bin/*.tgz
mv src/packages/excalidraw/$TGZ_NAME bin/
echo "Use file://$(pwd)/bin/$TGZ_NAME"
