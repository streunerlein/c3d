#!/bin/bash

# build Three.js custom components
cd Three.js.customized

cat Three.js 				>  ../Three.js.customized.js
# cat core/Clock.js 		>> ../Three.js.customized.js
cat core/Color.js 			>> ../Three.js.customized.js
# cat core/Vector2.js 		>> ../Three.js.customized.js
cat core/Vector3.js 		>> ../Three.js.customized.js
cat core/Vector4.js 		>> ../Three.js.customized.js
# cat core/Frustum.js 		>> ../Three.js.customized.js
# cat core/Ray.js 			>> ../Three.js.customized.js
# cat core/Rectangle.js 	>> ../Three.js.customized.js
# cat core/Math.js 			>> ../Three.js.customized.js
cat core/Matrix3.js 		>> ../Three.js.customized.js
cat core/Matrix4.js 		>> ../Three.js.customized.js
cat core/Object3D.js 		>> ../Three.js.customized.js
# cat core/Projector.js 	>> ../Three.js.customized.js
cat core/Quaternion.js 		>> ../Three.js.customized.js
cat core/Vertex.js 			>> ../Three.js.customized.js
cat core/Face3.js 			>> ../Three.js.customized.js
cat core/Face4.js 			>> ../Three.js.customized.js
cat core/UV.js 				>> ../Three.js.customized.js
cat core/Geometry.js 		>> ../Three.js.customized.js
# cat core/Spline.js 		>> ../Three.js.customized.js
cat cameras/Camera.js 		>> ../Three.js.customized.js
cat loaders/Loader.js 		>> ../Three.js.customized.js
cat loaders/JSONLoader.js 	>> ../Three.js.customized.js
cat MaterialDummy.js 		>> ../Three.js.customized.js

cd ..

# built Three.js custom components