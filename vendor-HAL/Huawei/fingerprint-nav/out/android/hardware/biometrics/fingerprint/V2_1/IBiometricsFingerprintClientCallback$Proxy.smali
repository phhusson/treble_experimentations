.class public final Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 333
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 337
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 338
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 339
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 341
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 342
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 345
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 343
    return-object v0

    .line 344
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v3

    .line 345
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 344
    throw v3
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 256
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 260
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 261
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 262
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 264
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 268
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 270
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 271
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 269
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 273
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 274
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_48
    move/from16 v0, v18

    if-ge v11, v0, :cond_70

    .line 275
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 277
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 278
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_56
    const/16 v4, 0x20

    if-ge v14, v4, :cond_68

    .line 279
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 280
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 278
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 283
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_74

    .line 274
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 289
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_70
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 287
    return-object v15

    .line 288
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_74
    move-exception v4

    .line 289
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 288
    throw v4
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 218
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 222
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 223
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 224
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 226
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 229
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 227
    return-object v0

    .line 228
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v3

    .line 229
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 228
    throw v3
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 237
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 241
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 242
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 243
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 245
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 248
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 246
    return-object v0

    .line 247
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v3

    .line 248
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 247
    throw v3
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 6
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 353
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 357
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 358
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 360
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 362
    return-void

    .line 359
    :catchall_20
    move-exception v2

    .line 360
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 359
    throw v2
.end method

.method public onAcquired(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 124
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 126
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 127
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 129
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 131
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_19
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 132
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_27

    .line 134
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 136
    return-void

    .line 133
    :catchall_27
    move-exception v2

    .line 134
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 133
    throw v2
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 142
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 144
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 145
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 146
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 148
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 150
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 151
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 153
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 155
    return-void

    .line 152
    :catchall_2a
    move-exception v2

    .line 153
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 152
    throw v2
.end method

.method public onEnrollResult(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 105
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 107
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 108
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 109
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 111
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 113
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 114
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 116
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 118
    return-void

    .line 115
    :catchall_2a
    move-exception v2

    .line 116
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 115
    throw v2
.end method

.method public onEnumerate(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 198
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 200
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 201
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 202
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 204
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 206
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 207
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 209
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 211
    return-void

    .line 208
    :catchall_2a
    move-exception v2

    .line 209
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 208
    throw v2
.end method

.method public onError(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 161
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 163
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 164
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 166
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 168
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_19
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 169
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_27

    .line 171
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 173
    return-void

    .line 170
    :catchall_27
    move-exception v2

    .line 171
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 170
    throw v2
.end method

.method public onRemoved(JIII)V
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 179
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 181
    invoke-virtual {v1, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 182
    invoke-virtual {v1, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 183
    invoke-virtual {v1, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 187
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 188
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 190
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 192
    return-void

    .line 189
    :catchall_2a
    move-exception v2

    .line 190
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 189
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 317
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 321
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 322
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 323
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 325
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 327
    return-void

    .line 324
    :catchall_23
    move-exception v2

    .line 325
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 324
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 297
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 301
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 306
    return-void

    .line 303
    :catchall_20
    move-exception v2

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 303
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    .line 94
    :catch_19
    move-exception v0

    .line 97
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
