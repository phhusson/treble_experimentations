.class public final Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public authenticate(JI)I
    .registers 11
    .param p1, "operationId"    # J
    .param p3, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 302
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 304
    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 306
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 308
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 310
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 312
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    move-result v0

    .line 315
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 313
    return v0

    .line 314
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_2c
    move-exception v3

    .line 315
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 314
    throw v3
.end method

.method public cancel()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 222
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 226
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 227
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 228
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 230
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    move-result v0

    .line 233
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 231
    return v0

    .line 232
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_25
    move-exception v3

    .line 233
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 232
    throw v3
.end method

.method public enroll([BII)I
    .registers 15
    .param p1, "hat"    # [B
    .param p2, "gid"    # I
    .param p3, "timeoutSec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x45

    .line 151
    new-instance v6, Landroid/os/HwParcel;

    invoke-direct {v6}, Landroid/os/HwParcel;-><init>()V

    .line 152
    .local v6, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v7, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v6, v7}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    new-instance v2, Landroid/os/HwBlob;

    invoke-direct {v2, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 156
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x0

    .line 157
    .local v0, "_hidl_array_offset_0":J
    const/4 v3, 0x0

    .local v3, "_hidl_index_0_0":I
    :goto_15
    if-ge v3, v10, :cond_22

    .line 158
    aget-byte v7, p1, v3

    invoke-virtual {v2, v0, v1, v7}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 159
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 162
    :cond_22
    invoke-virtual {v6, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 164
    invoke-virtual {v6, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 165
    invoke-virtual {v6, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 167
    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    .line 169
    .local v5, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_30
    iget-object v7, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-interface {v7, v8, v6, v5, v9}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 170
    invoke-virtual {v5}, Landroid/os/HwParcel;->verifySuccess()V

    .line 171
    invoke-virtual {v6}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 173
    invoke-virtual {v5}, Landroid/os/HwParcel;->readInt32()I
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_45

    move-result v4

    .line 176
    .local v4, "_hidl_out_debugErrno":I
    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    .line 174
    return v4

    .line 175
    .end local v4    # "_hidl_out_debugErrno":I
    :catchall_45
    move-exception v7

    .line 176
    invoke-virtual {v5}, Landroid/os/HwParcel;->release()V

    .line 175
    throw v7
.end method

.method public enumerate()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 241
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 245
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 246
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 247
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 249
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    move-result v0

    .line 252
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 250
    return v0

    .line 251
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_25
    move-exception v3

    .line 252
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 251
    throw v3
.end method

.method public getAuthenticatorId()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 203
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 207
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v4, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 208
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 209
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 211
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt64()J
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    move-result-wide v0

    .line 214
    .local v0, "_hidl_out_AuthenticatorId":J
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 212
    return-wide v0

    .line 213
    .end local v0    # "_hidl_out_AuthenticatorId":J
    :catchall_25
    move-exception v4

    .line 214
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 213
    throw v4
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 439
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 443
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 444
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 445
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 447
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 448
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 449
    return-object v0

    .line 450
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v3

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 450
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
    .line 361
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 362
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 366
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 367
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 368
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 370
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 374
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 376
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 377
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 375
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 379
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 380
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_48
    move/from16 v0, v18

    if-ge v11, v0, :cond_70

    .line 381
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 383
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 384
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_56
    const/16 v4, 0x20

    if-ge v14, v4, :cond_68

    .line 385
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 386
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 384
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 389
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_74

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 395
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_70
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 393
    return-object v15

    .line 394
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_74
    move-exception v4

    .line 395
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 394
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
    .line 323
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 324
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 328
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 330
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 332
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 335
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 333
    return-object v0

    .line 334
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v3

    .line 335
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 334
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
    .line 342
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 343
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 347
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 348
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 349
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 351
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 354
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 352
    return-object v0

    .line 353
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v3

    .line 354
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 353
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
    .line 417
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 458
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 459
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 463
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 464
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 466
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 468
    return-void

    .line 465
    :catchall_20
    move-exception v2

    .line 466
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 465
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
    .line 422
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 423
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 427
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 428
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 429
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 431
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 433
    return-void

    .line 430
    :catchall_23
    move-exception v2

    .line 431
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 430
    throw v2
.end method

.method public postEnroll()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 184
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 188
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 189
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 190
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 192
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    move-result v0

    .line 195
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 193
    return v0

    .line 194
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_25
    move-exception v3

    .line 195
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 194
    throw v3
.end method

.method public preEnroll()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 133
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 137
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v4, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 138
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 139
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 141
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt64()J
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    move-result-wide v0

    .line 144
    .local v0, "_hidl_out_authChallenge":J
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 142
    return-wide v0

    .line 143
    .end local v0    # "_hidl_out_authChallenge":J
    :catchall_25
    move-exception v4

    .line 144
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 143
    throw v4
.end method

.method public remove(II)I
    .registers 9
    .param p1, "gid"    # I
    .param p2, "fid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 260
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 262
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 264
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 266
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 267
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 268
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 270
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    move-result v0

    .line 273
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 271
    return v0

    .line 272
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_2c
    move-exception v3

    .line 273
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 272
    throw v3
.end method

.method public setActiveGroup(ILjava/lang/String;)I
    .registers 9
    .param p1, "gid"    # I
    .param p2, "storePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 281
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 283
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 285
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 287
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v3, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 288
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 289
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 291
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    move-result v0

    .line 294
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 292
    return v0

    .line 293
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_2c
    move-exception v3

    .line 294
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 293
    throw v3
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 403
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 407
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 408
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 410
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 412
    return-void

    .line 409
    :catchall_20
    move-exception v2

    .line 410
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 409
    throw v2
.end method

.method public setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .registers 9
    .param p1, "clientCallback"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 113
    .local v3, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v3, v5}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    if-nez p1, :cond_2b

    :goto_e
    invoke-virtual {v3, v4}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 116
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 118
    .local v2, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v4, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 119
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 120
    invoke-virtual {v3}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 122
    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt64()J
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_30

    move-result-wide v0

    .line 125
    .local v0, "_hidl_out_deviceId":J
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 123
    return-wide v0

    .line 114
    .end local v0    # "_hidl_out_deviceId":J
    .end local v2    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_2b
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v4

    goto :goto_e

    .line 124
    .restart local v2    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_30
    move-exception v4

    .line 125
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 124
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 102
    :catch_19
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint]@Proxy"

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
    .line 473
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
