.class public abstract Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "IExtBiometricsFingerprint.java"

# interfaces
.implements Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 678
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 681
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 725
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 726
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 727
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 728
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    .line 701
    new-array v2, v4, [B

    fill-array-data v2, :array_28

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 702
    new-array v2, v4, [B

    fill-array-data v2, :array_3c

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 703
    new-array v2, v4, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 700
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 701
    nop

    :array_28
    .array-data 1
        -0x8t
        -0x63t
        -0x6dt
        0x4at
        -0x6ct
        0x1at
        -0x67t
        -0x61t
        -0x17t
        -0x69t
        -0x58t
        -0x38t
        0x60t
        -0x2ft
        0x32t
        -0x11t
        -0x2ct
        0x18t
        0x70t
        0x3dt
        -0x51t
        -0xat
        0x54t
        -0xbt
        -0x27t
        -0x23t
        -0x39t
        0x5bt
        0x15t
        0x25t
        -0x7at
        -0x6t
    .end array-data

    .line 702
    :array_3c
    .array-data 1
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
    .end array-data

    .line 703
    :array_50
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 687
    const-string/jumbo v2, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 688
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 689
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 686
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 694
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 733
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 734
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 58
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    sparse-switch p1, :sswitch_data_498

    .line 1117
    :goto_3
    :sswitch_3
    return-void

    .line 765
    :sswitch_4
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v34

    .line 768
    .local v34, "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v22

    .line 769
    .local v22, "_hidl_out_deviceId":J
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 777
    .end local v22    # "_hidl_out_deviceId":J
    .end local v34    # "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    :sswitch_32
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide v16

    .line 780
    .local v16, "_hidl_out_authChallenge":J
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 788
    .end local v16    # "_hidl_out_authChallenge":J
    :sswitch_54
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    const/16 v50, 0x45

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v41, v0

    .line 792
    .local v41, "hat":[B
    const-wide/16 v50, 0x45

    move-object/from16 v0, p2

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v10

    .line 794
    .local v10, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 795
    .local v6, "_hidl_array_offset_0":J
    const/4 v12, 0x0

    .local v12, "_hidl_index_0_0":I
    :goto_73
    const/16 v50, 0x45

    move/from16 v0, v50

    if-ge v12, v0, :cond_86

    .line 796
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v50

    aput-byte v50, v41, v12

    .line 797
    const-wide/16 v50, 0x1

    add-long v6, v6, v50

    .line 795
    add-int/lit8 v12, v12, 0x1

    goto :goto_73

    .line 801
    :cond_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    .line 802
    .local v39, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v49

    .line 803
    .local v49, "timeoutSec":I
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v39

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->enroll([BII)I

    move-result v19

    .line 804
    .local v19, "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 812
    .end local v6    # "_hidl_array_offset_0":J
    .end local v10    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_index_0_0":I
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v39    # "gid":I
    .end local v41    # "hat":[B
    .end local v49    # "timeoutSec":I
    :sswitch_af
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->postEnroll()I

    move-result v19

    .line 815
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 823
    .end local v19    # "_hidl_out_debugErrno":I
    :sswitch_d2
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide v14

    .line 826
    .local v14, "_hidl_out_AuthenticatorId":J
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 834
    .end local v14    # "_hidl_out_AuthenticatorId":J
    :sswitch_f3
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->cancel()I

    move-result v19

    .line 837
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 845
    .end local v19    # "_hidl_out_debugErrno":I
    :sswitch_116
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->enumerate()I

    move-result v19

    .line 848
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 849
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 856
    .end local v19    # "_hidl_out_debugErrno":I
    :sswitch_139
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    .line 859
    .restart local v39    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v37

    .line 860
    .local v37, "fid":I
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->remove(II)I

    move-result v19

    .line 861
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 862
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 869
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v37    # "fid":I
    .end local v39    # "gid":I
    :sswitch_16a
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    .line 872
    .restart local v39    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 873
    .local v48, "storePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result v19

    .line 874
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 882
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v39    # "gid":I
    .end local v48    # "storePath":Ljava/lang/String;
    :sswitch_19b
    const-string/jumbo v50, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v44

    .line 885
    .local v44, "operationId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    .line 886
    .restart local v39    # "gid":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result v19

    .line 887
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 895
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v39    # "gid":I
    .end local v44    # "operationId":J
    :sswitch_1cc
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v42

    .line 898
    .local v42, "needLivenessAuthentication":I
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->setLivenessSwitch(I)I

    move-result v19

    .line 899
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 907
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v42    # "needLivenessAuthentication":I
    :sswitch_1f7
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->checkNeedReEnrollFinger()I

    move-result v18

    .line 910
    .local v18, "_hidl_out_checkNeedEnroll":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 911
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 918
    .end local v18    # "_hidl_out_checkNeedEnroll":I
    :sswitch_21a
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v39

    .line 921
    .restart local v39    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 922
    .restart local v48    # "storePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->removeUserData(ILjava/lang/String;)I

    move-result v19

    .line 923
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 931
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v39    # "gid":I
    .end local v48    # "storePath":Ljava/lang/String;
    :sswitch_24b
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v46

    .line 934
    .local v46, "security_id":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->updateSecurityId(J)I

    move-result v19

    .line 935
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 936
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 943
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v46    # "security_id":J
    :sswitch_276
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->getFpOldData()Ljava/util/ArrayList;

    move-result-object v24

    .line 946
    .local v24, "_hidl_out_fingerId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 947
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 954
    .end local v24    # "_hidl_out_fingerId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_299
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;

    move-result-object v38

    .line 957
    .local v38, "fidoClientCallback":Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v40

    .line 958
    .local v40, "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 959
    .local v32, "aaid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v43

    .line 960
    .local v43, "nonce":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v40

    move-object/from16 v3, v32

    move-object/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->verifyUser(Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;ILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v19

    .line 961
    .restart local v19    # "_hidl_out_debugErrno":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 969
    .end local v19    # "_hidl_out_debugErrno":I
    .end local v32    # "aaid":Ljava/lang/String;
    .end local v38    # "fidoClientCallback":Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;
    .end local v40    # "groupId":I
    .end local v43    # "nonce":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_2da
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->getTokenLen()I

    move-result v30

    .line 972
    .local v30, "_hidl_out_tokenLen":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 980
    .end local v30    # "_hidl_out_tokenLen":I
    :sswitch_2fd
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v36

    .line 983
    .local v36, "do_sensor_calibration":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->setCalibrateMode(I)I

    move-result v29

    .line 984
    .local v29, "_hidl_out_setModeStatus":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 992
    .end local v29    # "_hidl_out_setModeStatus":I
    .end local v36    # "do_sensor_calibration":I
    :sswitch_328
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->checkNeedCalibrateFingerPrint()I

    move-result v28

    .line 995
    .local v28, "_hidl_out_sensor_calibration_status":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1003
    .end local v28    # "_hidl_out_sensor_calibration_status":I
    :sswitch_34b
    const-string/jumbo v50, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v35

    .line 1006
    .local v35, "cmdId":I
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->sendCmdToHal(I)I

    move-result v27

    .line 1007
    .local v27, "_hidl_out_result":I
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1008
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1015
    .end local v27    # "_hidl_out_result":I
    .end local v35    # "cmdId":I
    :sswitch_376
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v21

    .line 1018
    .local v21, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1019
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1026
    .end local v21    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_399
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1035
    :sswitch_3b1
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v20

    .line 1038
    .local v20, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1046
    .end local v20    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_3d4
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v25

    .line 1049
    .local v25, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    new-instance v10, Landroid/os/HwBlob;

    const/16 v50, 0x10

    move/from16 v0, v50

    invoke-direct {v10, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1053
    .restart local v10    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1054
    .local v31, "_hidl_vec_size":I
    const-wide/16 v50, 0x8

    move-wide/from16 v0, v50

    move/from16 v2, v31

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1055
    const-wide/16 v50, 0xc

    const/16 v52, 0x0

    move-wide/from16 v0, v50

    move/from16 v2, v52

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1056
    new-instance v33, Landroid/os/HwBlob;

    mul-int/lit8 v50, v31, 0x20

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1057
    .local v33, "childBlob":Landroid/os/HwBlob;
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_418
    move/from16 v0, v31

    if-ge v11, v0, :cond_443

    .line 1059
    mul-int/lit8 v50, v11, 0x20

    move/from16 v0, v50

    int-to-long v8, v0

    .line 1060
    .local v8, "_hidl_array_offset_1":J
    const/4 v13, 0x0

    .local v13, "_hidl_index_1_0":I
    :goto_422
    const/16 v50, 0x20

    move/from16 v0, v50

    if-ge v13, v0, :cond_440

    .line 1061
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, [B

    aget-byte v50, v50, v13

    move-object/from16 v0, v33

    move/from16 v1, v50

    invoke-virtual {v0, v8, v9, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 1062
    const-wide/16 v50, 0x1

    add-long v8, v8, v50

    .line 1060
    add-int/lit8 v13, v13, 0x1

    goto :goto_422

    .line 1057
    :cond_440
    add-int/lit8 v11, v11, 0x1

    goto :goto_418

    .line 1066
    .end local v8    # "_hidl_array_offset_1":J
    .end local v13    # "_hidl_index_1_0":I
    :cond_443
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, v33

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1068
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1076
    .end local v10    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v25    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v31    # "_hidl_vec_size":I
    .end local v33    # "childBlob":Landroid/os/HwBlob;
    :sswitch_456
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 1094
    :sswitch_465
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v26

    .line 1097
    .local v26, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v50, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1098
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 1105
    .end local v26    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_488
    const-string/jumbo v50, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 762
    nop

    :sswitch_data_498
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_32
        0x3 -> :sswitch_54
        0x4 -> :sswitch_af
        0x5 -> :sswitch_d2
        0x6 -> :sswitch_f3
        0x7 -> :sswitch_116
        0x8 -> :sswitch_139
        0x9 -> :sswitch_16a
        0xa -> :sswitch_19b
        0xb -> :sswitch_1cc
        0xc -> :sswitch_1f7
        0xd -> :sswitch_21a
        0xe -> :sswitch_24b
        0xf -> :sswitch_276
        0x10 -> :sswitch_299
        0x11 -> :sswitch_2da
        0x12 -> :sswitch_2fd
        0x13 -> :sswitch_328
        0x14 -> :sswitch_34b
        0xf43484e -> :sswitch_376
        0xf444247 -> :sswitch_399
        0xf445343 -> :sswitch_3b1
        0xf485348 -> :sswitch_3d4
        0xf494e54 -> :sswitch_456
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_465
        0xf535953 -> :sswitch_488
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 719
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 744
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 745
    return-object p0

    .line 747
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->registerService(Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 710
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .prologue
    .line 738
    const/4 v0, 0x1

    return v0
.end method
