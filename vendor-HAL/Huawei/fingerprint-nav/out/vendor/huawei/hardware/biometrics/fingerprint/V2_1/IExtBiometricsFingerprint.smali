.class public interface abstract Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
.super Ljava/lang/Object;
.source "IExtBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;,
        Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Stub;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .prologue
    const/4 v6, 0x0

    .line 7
    if-nez p0, :cond_4

    .line 8
    return-object v6

    .line 12
    :cond_4
    const-string/jumbo v5, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    .line 14
    .local v3, "iface":Landroid/os/IHwInterface;
    if-eqz v3, :cond_14

    instance-of v5, v3, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    if-eqz v5, :cond_14

    .line 15
    check-cast v3, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    .end local v3    # "iface":Landroid/os/IHwInterface;
    return-object v3

    .line 18
    .restart local v3    # "iface":Landroid/os/IHwInterface;
    :cond_14
    new-instance v4, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;

    invoke-direct {v4, p0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v4, "proxy":Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
    :try_start_19
    invoke-interface {v4}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    .local v0, "descriptor":Ljava/lang/String;
    const-string/jumbo v5, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_37

    move-result v5

    if-eqz v5, :cond_21

    .line 23
    return-object v4

    .line 26
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptor$iterator":Ljava/util/Iterator;
    :catch_37
    move-exception v2

    .line 29
    :cond_38
    return-object v6
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    move-result-object v0

    goto :goto_3
.end method

.method public static getService()Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string/jumbo v0, "vendor.huawei.hardware.biometrics.fingerprint@2.1::IExtBiometricsFingerprint"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IExtBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract checkNeedCalibrateFingerPrint()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkNeedReEnrollFinger()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFpOldData()Ljava/util/ArrayList;
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
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
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
.end method

.method public abstract getTokenLen()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
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
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeUserData(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCmdToHal(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCalibrateMode(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLivenessSwitch(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateSecurityId(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verifyUser(Lvendor/huawei/hardware/biometrics/fingerprint/V2_1/IFidoAuthenticationCallback;ILjava/lang/String;Ljava/util/ArrayList;)I
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
.end method
