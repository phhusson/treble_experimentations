.class public final Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;
.super Ljava/lang/Object;
.source "IExtBiometricsFingerprint.java"

# interfaces
.implements Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
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

    iput-object v0, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public checkNeedCalibrateFingerPrint()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 485
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 489
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 490
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 491
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 493
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_26

    move-result v0

    .line 496
    .local v0, "_hidl_out_sensor_calibration_status":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 494
    return v0

    .line 495
    .end local v0    # "_hidl_out_sensor_calibration_status":I
    :catchall_26
    move-exception v3

    .line 496
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 495
    throw v3
.end method

.method public checkNeedReEnrollFinger()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 344
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 348
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 349
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 350
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 352
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_26

    move-result v0

    .line 355
    .local v0, "_hidl_out_checkNeedEnroll":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 353
    return v0

    .line 354
    .end local v0    # "_hidl_out_checkNeedEnroll":I
    :catchall_26
    move-exception v3

    .line 355
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 354
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
    iget-object v7, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v4, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 639
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 640
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 644
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 645
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 646
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 648
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 649
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 652
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 650
    return-object v0

    .line 651
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v3

    .line 652
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 651
    throw v3
.end method

.method public getFpOldData()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 404
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 408
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 409
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 410
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 412
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_26

    move-result-object v0

    .line 415
    .local v0, "_hidl_out_fingerId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 413
    return-object v0

    .line 414
    .end local v0    # "_hidl_out_fingerId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_26
    move-exception v3

    .line 415
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 414
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
    .line 562
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 563
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 567
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 568
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 569
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 571
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 575
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 577
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 578
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 576
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 580
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 581
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_48
    move/from16 v0, v18

    if-ge v11, v0, :cond_70

    .line 582
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 584
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 585
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_56
    const/16 v4, 0x20

    if-ge v14, v4, :cond_68

    .line 586
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 587
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 585
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 590
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_74

    .line 581
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 596
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_70
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 594
    return-object v15

    .line 595
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_74
    move-exception v4

    .line 596
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 595
    throw v4
.end method

.method public getTokenLen()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 446
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 452
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 454
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_26

    move-result v0

    .line 457
    .local v0, "_hidl_out_tokenLen":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 455
    return v0

    .line 456
    .end local v0    # "_hidl_out_tokenLen":I
    :catchall_26
    move-exception v3

    .line 457
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 456
    throw v3
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
    .line 524
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 525
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 529
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 530
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 531
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 533
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 536
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 534
    return-object v0

    .line 535
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v3

    .line 536
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 535
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
    .line 543
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 544
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 548
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 549
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 550
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 552
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 555
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 553
    return-object v0

    .line 554
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v3

    .line 555
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 554
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
    .line 618
    iget-object v0, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 659
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 660
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 664
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 665
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 667
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 669
    return-void

    .line 666
    :catchall_20
    move-exception v2

    .line 667
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 666
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
    .line 623
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 624
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 628
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 629
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 630
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 632
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 634
    return-void

    .line 631
    :catchall_23
    move-exception v2

    .line 632
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 631
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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v4, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public removeUserData(ILjava/lang/String;)I
    .registers 9
    .param p1, "gid"    # I
    .param p2, "storePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 363
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 365
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 367
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 369
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 370
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 371
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 373
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    move-result v0

    .line 376
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 374
    return v0

    .line 375
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_2c
    move-exception v3

    .line 376
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 375
    throw v3
.end method

.method public sendCmdToHal(I)I
    .registers 8
    .param p1, "cmdId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 504
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 507
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 509
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 510
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 511
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 513
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    move-result v0

    .line 516
    .local v0, "_hidl_out_result":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 514
    return v0

    .line 515
    .end local v0    # "_hidl_out_result":I
    :catchall_29
    move-exception v3

    .line 516
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 515
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
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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

.method public setCalibrateMode(I)I
    .registers 8
    .param p1, "do_sensor_calibration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 465
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 470
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 472
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 474
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    move-result v0

    .line 477
    .local v0, "_hidl_out_setModeStatus":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 475
    return v0

    .line 476
    .end local v0    # "_hidl_out_setModeStatus":I
    :catchall_29
    move-exception v3

    .line 477
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 476
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
    .line 603
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 604
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 608
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 609
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 611
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 613
    return-void

    .line 610
    :catchall_20
    move-exception v2

    .line 611
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 610
    throw v2
.end method

.method public setLivenessSwitch(I)I
    .registers 8
    .param p1, "needLivenessAuthentication"    # I
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
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 329
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 331
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 333
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    move-result v0

    .line 336
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 334
    return v0

    .line 335
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_29
    move-exception v3

    .line 336
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 335
    throw v3
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
    iget-object v4, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    invoke-virtual {p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->interfaceDescriptor()Ljava/lang/String;

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
    const-string/jumbo v1, "[class or subclass of vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint]@Proxy"

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
    .line 674
    iget-object v0, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public updateSecurityId(J)I
    .registers 10
    .param p1, "security_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 384
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 387
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 389
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 390
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 391
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 393
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    move-result v0

    .line 396
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 394
    return v0

    .line 395
    .end local v0    # "_hidl_out_debugErrno":I
    :catchall_29
    move-exception v3

    .line 396
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 395
    throw v3
.end method

.method public verifyUser(Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;ILjava/lang/String;Ljava/util/ArrayList;)I
    .registers 11
    .param p1, "fidoClientCallback"    # Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;
    .param p2, "groupId"    # I
    .param p3, "aaid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p4, "nonce":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .line 422
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 423
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    if-nez p1, :cond_35

    :goto_e
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 425
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 426
    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, p4}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 429
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 431
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_1f
    iget-object v3, p0, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 432
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 433
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 435
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3a

    move-result v0

    .line 438
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 436
    return v0

    .line 424
    .end local v0    # "_hidl_out_debugErrno":I
    .end local v1    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_35
    invoke-interface {p1}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_e

    .line 437
    .restart local v1    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_3a
    move-exception v3

    .line 438
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 437
    throw v3
.end method
