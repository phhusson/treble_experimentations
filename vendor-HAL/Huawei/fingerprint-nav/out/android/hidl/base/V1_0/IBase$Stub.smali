.class public abstract Landroid/hidl/base/V1_0/IBase$Stub;
.super Landroid/os/HwBinder;
.source "IBase.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/base/V1_0/IBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 249
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 289
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 290
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 291
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 292
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 267
    const/16 v2, 0x20

    new-array v2, v2, [B

    fill-array-data v2, :array_18

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 266
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 267
    nop

    :array_18
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
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 255
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 254
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 297
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 298
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 21
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
    .line 326
    sparse-switch p1, :sswitch_data_e0

    .line 431
    :goto_3
    :sswitch_3
    return-void

    .line 329
    :sswitch_4
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    .line 332
    .local v8, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 333
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 340
    .end local v8    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1f
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 349
    :sswitch_31
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 353
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 360
    .end local v7    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    .line 363
    .local v9, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 365
    new-instance v4, Landroid/os/HwBlob;

    const/16 v13, 0x10

    invoke-direct {v4, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 367
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 368
    .local v11, "_hidl_vec_size":I
    const-wide/16 v14, 0x8

    invoke-virtual {v4, v14, v15, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 369
    const-wide/16 v14, 0xc

    const/4 v13, 0x0

    invoke-virtual {v4, v14, v15, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 370
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v11, 0x20

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 371
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_7c
    if-ge v5, v11, :cond_9a

    .line 373
    mul-int/lit8 v13, v5, 0x20

    int-to-long v2, v13

    .line 374
    .local v2, "_hidl_array_offset_1":J
    const/4 v6, 0x0

    .local v6, "_hidl_index_1_0":I
    :goto_82
    const/16 v13, 0x20

    if-ge v6, v13, :cond_97

    .line 375
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    aget-byte v13, v13, v6

    invoke-virtual {v12, v2, v3, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 376
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    .line 374
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    .line 371
    :cond_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 380
    .end local v2    # "_hidl_array_offset_1":J
    .end local v6    # "_hidl_index_1_0":I
    :cond_9a
    const-wide/16 v14, 0x0

    invoke-virtual {v4, v14, v15, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 382
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 390
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    :sswitch_a9
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 408
    :sswitch_b6
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    .line 411
    .local v10, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 412
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 419
    .end local v10    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_d2
    const-string/jumbo v13, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/hidl/base/V1_0/IBase$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 326
    nop

    :sswitch_data_e0
    .sparse-switch
        0xf43484e -> :sswitch_4
        0xf444247 -> :sswitch_1f
        0xf445343 -> :sswitch_31
        0xf485348 -> :sswitch_4c
        0xf494e54 -> :sswitch_a9
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_b6
        0xf535953 -> :sswitch_d2
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 283
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    return-object p0

    .line 311
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
    .line 315
    invoke-virtual {p0, p1}, Landroid/hidl/base/V1_0/IBase$Stub;->registerService(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/base/V1_0/IBase$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 302
    const/4 v0, 0x1

    return v0
.end method
