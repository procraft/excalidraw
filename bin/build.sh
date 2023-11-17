set -ex

TGZ_NAME=jitsi-excalidraw-0.0.16.1.tgz

yarn
cd src/packages/excalidraw
yarn
yarn run build:umd
rm -rf tgz
mkdir tgz
cp -r {dist,types,README.md,main.js,package.json} tgz/
cd tgz
tar -czf $TGZ_NAME --exclude=$TGZ_NAME ./*
cd ../../../..
rm -rf bin/*.tgz
mv src/packages/excalidraw/tgz/$TGZ_NAME bin/
echo "Use file://$(pwd)/bin/$TGZ_NAME"
