#!/bin/bash

/build/AOSP-8.0/out/host/linux-x86/bin/jack \
	-D jack.android.min-api-level=24 -D jack.java.source.version=8 \
	-cp /build/apps/sdk/platforms/android-27/android.jar \
	--output-dex out \
	Test.java vendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint.java 
