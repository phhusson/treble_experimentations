.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 374
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 416
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 417
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 418
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 419
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

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 393
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 394
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 392
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 393
    nop

    :array_20
    .array-data 1
        -0x56t
        -0x45t
        0x5ct
        0x3ct
        0x58t
        0x55t
        -0x6et
        -0x29t
        0x1et
        -0x1bt
        0x7bt
        0x77t
        0x29t
        -0x74t
        0x14t
        -0x67t
        0x3dt
        0x77t
        -0x6ft
        0x4dt
        -0x22t
        -0x56t
        0x64t
        -0x4et
        -0x3bt
        0x10t
        -0x66t
        0x60t
        0x2bt
        0x2t
        -0x16t
        0x47t
    .end array-data

    .line 394
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
    .line 379
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 380
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 381
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 379
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 424
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 425
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 35
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
    .line 453
    sparse-switch p1, :sswitch_data_1ba

    .line 628
    :goto_3
    :sswitch_3
    return-void

    .line 456
    :sswitch_4
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 459
    .local v6, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 460
    .local v8, "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 461
    .local v9, "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .local v10, "remaining":I
    move-object/from16 v5, p0

    .line 462
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnrollResult(JIII)V

    goto :goto_3

    .line 468
    .end local v6    # "deviceId":J
    .end local v8    # "fingerId":I
    .end local v9    # "groupId":I
    .end local v10    # "remaining":I
    :sswitch_22
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 471
    .restart local v6    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    .line 472
    .local v26, "acquiredInfo":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    .line 473
    .local v29, "vendorCode":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAcquired(JII)V

    goto :goto_3

    .line 479
    .end local v6    # "deviceId":J
    .end local v26    # "acquiredInfo":I
    .end local v29    # "vendorCode":I
    :sswitch_40
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 482
    .restart local v6    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 483
    .restart local v8    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 484
    .restart local v9    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .local v16, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v11, p0

    move-wide v12, v6

    move v14, v8

    move v15, v9

    .line 485
    invoke-virtual/range {v11 .. v16}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    goto :goto_3

    .line 491
    .end local v6    # "deviceId":J
    .end local v8    # "fingerId":I
    .end local v9    # "groupId":I
    .end local v16    # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_61
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 494
    .restart local v6    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    .line 495
    .local v28, "error":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v29

    .line 496
    .restart local v29    # "vendorCode":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onError(JII)V

    goto :goto_3

    .line 502
    .end local v6    # "deviceId":J
    .end local v28    # "error":I
    .end local v29    # "vendorCode":I
    :sswitch_7f
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 505
    .restart local v6    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 506
    .restart local v8    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 507
    .restart local v9    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .restart local v10    # "remaining":I
    move-object/from16 v5, p0

    .line 508
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onRemoved(JIII)V

    goto/16 :goto_3

    .line 514
    .end local v6    # "deviceId":J
    .end local v8    # "fingerId":I
    .end local v9    # "groupId":I
    .end local v10    # "remaining":I
    :sswitch_9e
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 517
    .restart local v6    # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 518
    .restart local v8    # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 519
    .restart local v9    # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .restart local v10    # "remaining":I
    move-object/from16 v5, p0

    .line 520
    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnumerate(JIII)V

    goto/16 :goto_3

    .line 526
    .end local v6    # "deviceId":J
    .end local v8    # "fingerId":I
    .end local v9    # "groupId":I
    .end local v10    # "remaining":I
    :sswitch_bd
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v22

    .line 529
    .local v22, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 530
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 537
    .end local v22    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_db
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 546
    :sswitch_ee
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v21

    .line 549
    .local v21, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 557
    .end local v21    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_10c
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v23

    .line 560
    .local v23, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 564
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 565
    .local v25, "_hidl_vec_size":I
    const-wide/16 v12, 0x8

    move/from16 v0, v25

    invoke-virtual {v4, v12, v13, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 566
    const-wide/16 v12, 0xc

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v13, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 567
    new-instance v27, Landroid/os/HwBlob;

    mul-int/lit8 v5, v25, 0x20

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 568
    .local v27, "childBlob":Landroid/os/HwBlob;
    const/16 v17, 0x0

    .local v17, "_hidl_index_0":I
    :goto_141
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_171

    .line 570
    mul-int/lit8 v5, v17, 0x20

    int-to-long v0, v5

    move-wide/from16 v18, v0

    .line 571
    .local v18, "_hidl_array_offset_1":J
    const/16 v20, 0x0

    .local v20, "_hidl_index_1_0":I
    :goto_14e
    const/16 v5, 0x20

    move/from16 v0, v20

    if-ge v0, v5, :cond_16e

    .line 572
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aget-byte v5, v5, v20

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 573
    const-wide/16 v12, 0x1

    add-long v18, v18, v12

    .line 571
    add-int/lit8 v20, v20, 0x1

    goto :goto_14e

    .line 568
    :cond_16e
    add-int/lit8 v17, v17, 0x1

    goto :goto_141

    .line 577
    .end local v18    # "_hidl_array_offset_1":J
    .end local v20    # "_hidl_index_1_0":I
    :cond_171
    const-wide/16 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v12, v13, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 587
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v17    # "_hidl_index_0":I
    .end local v23    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v25    # "_hidl_vec_size":I
    .end local v27    # "childBlob":Landroid/os/HwBlob;
    :sswitch_182
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 605
    :sswitch_18f
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v24

    .line 608
    .local v24, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 616
    .end local v24    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_1ad
    const-string/jumbo v5, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 453
    :sswitch_data_1ba
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_22
        0x3 -> :sswitch_40
        0x4 -> :sswitch_61
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_9e
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_db
        0xf445343 -> :sswitch_ee
        0xf485348 -> :sswitch_10c
        0xf494e54 -> :sswitch_182
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_18f
        0xf535953 -> :sswitch_1ad
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 410
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    return-object p0

    .line 438
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
    .line 442
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 401
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 429
    const/4 v0, 0x1

    return v0
.end method
