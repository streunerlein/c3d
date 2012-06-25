#!/bin/bash

cd ..

# create save copy from last build
mkdir build/last
rm build/last/* # clear if existed
mv build/*.js build/last

# execute build scripts for third party scripts
cd thirdparty
./build.sh
cd ..

# build thirdparty scripts
cat thirdparty/*.js > build/thirdparty.js
java -jar utils/yuicompressor-2.4.7.jar build/thirdparty.js -o build/thirdparty.min.js

# build library source
cat src/*.js > build/c3d.js
java -jar utils/yuicompressor-2.4.7.jar build/c3d.js -o build/c3d.min.js

# build all-on-one bundle
cat build/thirdparty.js build/c3d.js > build/c3d.standalone.js
cat build/thirdparty.min.js build/c3d.min.js > build/c3d.standalone.min.js
