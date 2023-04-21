# AMapFoundation-NO-IDFA(1.8.2)
curl https://amappc.oss-cn-zhangjiakou.aliyuncs.com/lbs/static/zip/AMap_iOS_Foundation_NO_IDFA_Lib_V1.8.2.zip -o AMapFoundation-NO-IDFA.zip
unzip AMapFoundation-NO-IDFA.zip -d AMapFoundation-NO-IDFA

xcframeworkName="AMapFoundationKit"

function process {
    L_PATH=$1
    OUTPUT_PATH=$2
    lipo $L_PATH/$xcframeworkName.framework/$xcframeworkName -thin arm64 -output $L_PATH/$xcframeworkName-arm64
    lipo $L_PATH/$xcframeworkName.framework/$xcframeworkName -thin armv7 -output $L_PATH/$xcframeworkName-armv7
    lipo $L_PATH/$xcframeworkName.framework/$xcframeworkName -thin x86_64 -output $L_PATH/$xcframeworkName-x86_64
    lipo $L_PATH/$xcframeworkName.framework/$xcframeworkName -thin arm64 -output $L_PATH/$xcframeworkName-sim-arm64

    mkdir $L_PATH/o
    
    cd $L_PATH/o

    ar x ../$xcframeworkName-sim-arm64

    ../../script.sh ./ arm64 7.0 15.5
        
    ar crv ../$xcframeworkName-sim-arm64 ./*.o
    
    cd ../../

    lipo -create -output $L_PATH/$xcframeworkName-armv7_arm64 $L_PATH/$xcframeworkName-armv7 $L_PATH/$xcframeworkName-arm64
    lipo -create -output $L_PATH/$xcframeworkName-arm64_x86_64 $L_PATH/$xcframeworkName-sim-arm64 $L_PATH/$xcframeworkName-x86_64

    mkdir $L_PATH/iphone-os $L_PATH/iphone-sim
    cp -r $L_PATH/$xcframeworkName.framework $L_PATH/iphone-os
    cp -r $L_PATH/$xcframeworkName.framework $L_PATH/iphone-sim

    cp $L_PATH/$xcframeworkName-armv7_arm64 $L_PATH/iphone-os/$xcframeworkName.framework/$xcframeworkName
    cp $L_PATH/$xcframeworkName-arm64_x86_64 $L_PATH/iphone-sim/$xcframeworkName.framework/$xcframeworkName

    rm -rf $OUTPUT_PATH/*

    xcodebuild -create-xcframework -framework $L_PATH/iphone-os/$xcframeworkName.framework -framework $L_PATH/iphone-sim/$xcframeworkName.framework -output $OUTPUT_PATH/$xcframeworkName.xcframework

    zip -r $OUTPUT_PATH.zip $OUTPUT_PATH
}


process 'AMapFoundation-NO-IDFA' './output/AMapFoundation-NO-IDFA'
