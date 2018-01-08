.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.super Ljava/lang/Object;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;,
        Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
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
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    .line 14
    .local v3, "iface":Landroid/os/IHwInterface;
    if-eqz v3, :cond_14

    instance-of v5, v3, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    if-eqz v5, :cond_14

    .line 15
    check-cast v3, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .end local v3    # "iface":Landroid/os/IHwInterface;
    return-object v3

    .line 18
    .restart local v3    # "iface":Landroid/os/IHwInterface;
    :cond_14
    new-instance v4, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;

    invoke-direct {v4, p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v4, "proxy":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    :try_start_19
    invoke-interface {v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->interfaceChain()Ljava/util/ArrayList;

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
    const-string/jumbo v5, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

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

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
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

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v0

    goto :goto_3
.end method

.method public static getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
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

.method public abstract onAcquired(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAuthenticated(JIILjava/util/ArrayList;)V
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
.end method

.method public abstract onEnrollResult(JIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnumerate(JIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoved(JIII)V
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

.method public abstract setHALInstrumentation()V
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
