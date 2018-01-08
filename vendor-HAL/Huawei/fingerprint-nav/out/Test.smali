.class public LTest;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Hello"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->getService()Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    move-result-object v0

    .line 6
    const/16 v1, 0x29

    invoke-interface {v0, v1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->sendCmdToHal(I)I

    .line 7
    return-void
.end method
