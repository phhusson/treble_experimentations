.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 480
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 522
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 523
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 524
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 525
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

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 499
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 500
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 498
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 499
    nop

    :array_20
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

    .line 500
    :array_34
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
    .line 485
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 486
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 487
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 485
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 530
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 531
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 41
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
    .line 559
    sparse-switch p1, :sswitch_data_2ec

    .line 794
    :goto_3
    :sswitch_3
    return-void

    .line 562
    :sswitch_4
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v25

    .line 565
    .local v25, "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v20

    .line 566
    .local v20, "_hidl_out_deviceId":J
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 574
    .end local v20    # "_hidl_out_deviceId":J
    .end local v25    # "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    :sswitch_32
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide v14

    .line 577
    .local v14, "_hidl_out_authChallenge":J
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 585
    .end local v14    # "_hidl_out_authChallenge":J
    :sswitch_52
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    const/16 v33, 0x45

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 589
    .local v28, "hat":[B
    const-wide/16 v34, 0x45

    move-object/from16 v0, p2

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    .line 591
    .local v8, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x0

    .line 592
    .local v4, "_hidl_array_offset_0":J
    const/4 v10, 0x0

    .local v10, "_hidl_index_0_0":I
    :goto_71
    const/16 v33, 0x45

    move/from16 v0, v33

    if-ge v10, v0, :cond_84

    .line 593
    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v33

    aput-byte v33, v28, v10

    .line 594
    const-wide/16 v34, 0x1

    add-long v4, v4, v34

    .line 592
    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    .line 598
    :cond_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    .line 599
    .local v27, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    .line 600
    .local v32, "timeoutSec":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enroll([BII)I

    move-result v16

    .line 601
    .local v16, "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 602
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 609
    .end local v4    # "_hidl_array_offset_0":J
    .end local v8    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v10    # "_hidl_index_0_0":I
    .end local v16    # "_hidl_out_debugErrno":I
    .end local v27    # "gid":I
    .end local v28    # "hat":[B
    .end local v32    # "timeoutSec":I
    :sswitch_ad
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->postEnroll()I

    move-result v16

    .line 612
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 620
    .end local v16    # "_hidl_out_debugErrno":I
    :sswitch_d0
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide v12

    .line 623
    .local v12, "_hidl_out_AuthenticatorId":J
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 631
    .end local v12    # "_hidl_out_AuthenticatorId":J
    :sswitch_f1
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->cancel()I

    move-result v16

    .line 634
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 642
    .end local v16    # "_hidl_out_debugErrno":I
    :sswitch_114
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enumerate()I

    move-result v16

    .line 645
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 646
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 653
    .end local v16    # "_hidl_out_debugErrno":I
    :sswitch_137
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    .line 656
    .restart local v27    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    .line 657
    .local v26, "fid":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->remove(II)I

    move-result v16

    .line 658
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 659
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 666
    .end local v16    # "_hidl_out_debugErrno":I
    .end local v26    # "fid":I
    .end local v27    # "gid":I
    :sswitch_168
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    .line 669
    .restart local v27    # "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 670
    .local v29, "storePath":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result v16

    .line 671
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 679
    .end local v16    # "_hidl_out_debugErrno":I
    .end local v27    # "gid":I
    .end local v29    # "storePath":Ljava/lang/String;
    :sswitch_199
    const-string/jumbo v33, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v30

    .line 682
    .local v30, "operationId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    .line 683
    .restart local v27    # "gid":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result v16

    .line 684
    .restart local v16    # "_hidl_out_debugErrno":I
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 692
    .end local v16    # "_hidl_out_debugErrno":I
    .end local v27    # "gid":I
    .end local v30    # "operationId":J
    :sswitch_1ca
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v18

    .line 695
    .local v18, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 696
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 703
    .end local v18    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1ed
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 712
    :sswitch_205
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v17

    .line 715
    .local v17, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 723
    .end local v17    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_228
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v19

    .line 726
    .local v19, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    new-instance v8, Landroid/os/HwBlob;

    const/16 v33, 0x10

    move/from16 v0, v33

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 730
    .restart local v8    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 731
    .local v23, "_hidl_vec_size":I
    const-wide/16 v34, 0x8

    move-wide/from16 v0, v34

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 732
    const-wide/16 v34, 0xc

    const/16 v33, 0x0

    move-wide/from16 v0, v34

    move/from16 v2, v33

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 733
    new-instance v24, Landroid/os/HwBlob;

    mul-int/lit8 v33, v23, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 734
    .local v24, "childBlob":Landroid/os/HwBlob;
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_26c
    move/from16 v0, v23

    if-ge v9, v0, :cond_297

    .line 736
    mul-int/lit8 v33, v9, 0x20

    move/from16 v0, v33

    int-to-long v6, v0

    .line 737
    .local v6, "_hidl_array_offset_1":J
    const/4 v11, 0x0

    .local v11, "_hidl_index_1_0":I
    :goto_276
    const/16 v33, 0x20

    move/from16 v0, v33

    if-ge v11, v0, :cond_294

    .line 738
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    aget-byte v33, v33, v11

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 739
    const-wide/16 v34, 0x1

    add-long v6, v6, v34

    .line 737
    add-int/lit8 v11, v11, 0x1

    goto :goto_276

    .line 734
    :cond_294
    add-int/lit8 v9, v9, 0x1

    goto :goto_26c

    .line 743
    .end local v6    # "_hidl_array_offset_1":J
    .end local v11    # "_hidl_index_1_0":I
    :cond_297
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 745
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 753
    .end local v8    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    .end local v19    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v23    # "_hidl_vec_size":I
    .end local v24    # "childBlob":Landroid/os/HwBlob;
    :sswitch_2aa
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 771
    :sswitch_2b9
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v22

    .line 774
    .local v22, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 782
    .end local v22    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2dc
    const-string/jumbo v33, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 559
    nop

    :sswitch_data_2ec
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_32
        0x3 -> :sswitch_52
        0x4 -> :sswitch_ad
        0x5 -> :sswitch_d0
        0x6 -> :sswitch_f1
        0x7 -> :sswitch_114
        0x8 -> :sswitch_137
        0x9 -> :sswitch_168
        0xa -> :sswitch_199
        0xf43484e -> :sswitch_1ca
        0xf444247 -> :sswitch_1ed
        0xf445343 -> :sswitch_205
        0xf485348 -> :sswitch_228
        0xf494e54 -> :sswitch_2aa
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2b9
        0xf535953 -> :sswitch_2dc
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 516
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 542
    return-object p0

    .line 544
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
    .line 548
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->registerService(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 507
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 535
    const/4 v0, 0x1

    return v0
.end method
