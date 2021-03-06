#!/bin/sh
source ../env.sh 
source ../VERSION
echo $GIT_COMMIT
echo $GO_VERSION
echo $BUILD_DATE
gomobile bind  -v -ldflags " -X github.com/SmartMeshFoundation/Photon/cmd/photon/mainimpl.GitCommit=$GIT_COMMIT -X github.com/SmartMeshFoundation/Photon/cmd/photon/mainimpl.GoVersion=$GO_VERSION -X github.com/SmartMeshFoundation/Photon/cmd/photon/mainimpl.BuildDate=$BUILD_DATE -X github.com/SmartMeshFoundation/Photon/cmd/photon/mainimpl.Version=$VERSION"  -target=ios/arm64,ios/arm

zip -r -y iOS_$VERSION.zip Mobile.framework
rm -rf Mobile.framework
