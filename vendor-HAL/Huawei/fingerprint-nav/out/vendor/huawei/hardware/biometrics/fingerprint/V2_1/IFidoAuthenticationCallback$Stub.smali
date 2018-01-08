.class public abstract Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;
.super Landroid/os/HwBinder;
.source "IFidoAuthenticationCallback.java"

# interfaces
.implements Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 271
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 313
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 314
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 315
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 316
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

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 290
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 291
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 289
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 290
    nop

    :array_20
    .array-data 1
        0x4ct
        -0x32t
        -0x50t
        -0x28t
        -0x57t
        0x48t
        -0x40t
        -0x4ft
        -0x39t
        0x43t
        -0x42t
        -0x1dt
        -0x15t
        -0x5ft
        -0x8t
        -0x60t
        -0x32t
        -0x11t
        0x51t
        -0x4ft
        0x3dt
        -0x13t
        -0x4t
        -0x41t
        0x7t
        -0x20t
        -0x63t
        -0x45t
        0x6at
        -0x6at
        -0x56t
        -0x57t
    .end array-data

    .line 291
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
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 277
    const-string/jumbo v2, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IFidoAuthenticationCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 278
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 276
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IFidoAuthenticationCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 321
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 322
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 29
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
    .line 350
    sparse-switch p1, :sswitch_data_114

    .line 467
    :goto_3
    :sswitch_3
    return-void

    .line 353
    :sswitch_4
    const-string/jumbo v4, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IFidoAuthenticationCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 356
    .local v5, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    .line 357
    .local v6, "opId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v8

    .line 358
    .local v8, "userId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "encapsulatedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v4, p0

    .line 359
    invoke-virtual/range {v4 .. v9}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->onUserVerificationResult(IJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 365
    .end local v5    # "result":I
    .end local v6    # "opId":J
    .end local v8    # "userId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v9    # "encapsulatedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_22
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v16

    .line 368
    .local v16, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 369
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 376
    .end local v16    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3f
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 385
    :sswitch_51
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v15

    .line 388
    .local v15, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 389
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 396
    .end local v15    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6c
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v17

    .line 399
    .local v17, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 401
    new-instance v12, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v12, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 403
    .local v12, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 404
    .local v19, "_hidl_vec_size":I
    const-wide/16 v22, 0x8

    move-wide/from16 v0, v22

    move/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 405
    const-wide/16 v22, 0xc

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 406
    new-instance v20, Landroid/os/HwBlob;

    mul-int/lit8 v4, v19, 0x20

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 407
    .local v20, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_a4
    move/from16 v0, v19

    if-ge v13, v0, :cond_c9

    .line 409
    mul-int/lit8 v4, v13, 0x20

    int-to-long v10, v4

    .line 410
    .local v10, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_ac
    const/16 v4, 0x20

    if-ge v14, v4, :cond_c6

    .line 411
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aget-byte v4, v4, v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 412
    const-wide/16 v22, 0x1

    add-long v10, v10, v22

    .line 410
    add-int/lit8 v14, v14, 0x1

    goto :goto_ac

    .line 407
    :cond_c6
    add-int/lit8 v13, v13, 0x1

    goto :goto_a4

    .line 416
    .end local v10    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    :cond_c9
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 426
    .end local v12    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v13    # "_hidl_index_0":I
    .end local v17    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v19    # "_hidl_vec_size":I
    .end local v20    # "childBlob":Landroid/os/HwBlob;
    :sswitch_dc
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 444
    :sswitch_e9
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v18

    .line 447
    .local v18, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 448
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 455
    .end local v18    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_107
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 350
    :sswitch_data_114
    .sparse-switch
        0x1 -> :sswitch_4
        0xf43484e -> :sswitch_22
        0xf444247 -> :sswitch_3f
        0xf445343 -> :sswitch_51
        0xf485348 -> :sswitch_6c
        0xf494e54 -> :sswitch_dc
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_e9
        0xf535953 -> :sswitch_107
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 307
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IFidoAuthenticationCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    return-object p0

    .line 335
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
    .line 339
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 298
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 326
    const/4 v0, 0x1

    return v0
.end method
