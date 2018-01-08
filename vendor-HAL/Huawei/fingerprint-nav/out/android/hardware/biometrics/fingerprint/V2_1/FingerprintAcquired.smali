.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;
.super Ljava/lang/Object;
.source "FingerprintAcquired.java"


# instance fields
.field public acquiredInfo:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 15
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 51
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 53
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x4

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 54
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 52
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 56
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 57
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_24
    if-ge v9, v12, :cond_37

    .line 58
    new-instance v11, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    invoke-direct {v11}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;-><init>()V

    .line 59
    .local v11, "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;
    mul-int/lit8 v1, v9, 0x4

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 60
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 64
    .end local v11    # "_hidl_vec_element":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;
    :cond_37
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 83
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 84
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 85
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 86
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_1e
    if-ge v1, v2, :cond_2f

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    mul-int/lit8 v5, v1, 0x4

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 89
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    if-ne p0, p1, :cond_5

    .line 10
    return v4

    .line 12
    :cond_5
    if-nez p1, :cond_8

    .line 13
    return v3

    .line 15
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    if-eq v1, v2, :cond_11

    .line 16
    return v3

    :cond_11
    move-object v0, p1

    .line 18
    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;

    .line 19
    .local v0, "other":Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    iget v2, v0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    if-eq v1, v2, :cond_1b

    .line 20
    return v3

    .line 22
    :cond_1b
    return v4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    .line 70
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 42
    const-wide/16 v2, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 43
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 44
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, ".acquiredInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    invoke-static {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->acquiredInfo:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 98
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 73
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 74
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquired;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 76
    return-void
.end method
