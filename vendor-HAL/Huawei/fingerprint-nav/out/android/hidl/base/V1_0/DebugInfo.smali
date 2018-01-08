.class public final Landroid/hidl/base/V1_0/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hidl/base/V1_0/DebugInfo$Architecture;
    }
.end annotation


# instance fields
.field public arch:I

.field public pid:I

.field public ptr:J


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
            "Landroid/hidl/base/V1_0/DebugInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/base/V1_0/DebugInfo;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 105
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 107
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 108
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 106
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 110
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 111
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_24
    if-ge v9, v12, :cond_37

    .line 112
    new-instance v11, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v11}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 113
    .local v11, "_hidl_vec_element":Landroid/hidl/base/V1_0/DebugInfo;
    mul-int/lit8 v1, v9, 0x18

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hidl/base/V1_0/DebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 118
    .end local v11    # "_hidl_vec_element":Landroid/hidl/base/V1_0/DebugInfo;
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
            "Landroid/hidl/base/V1_0/DebugInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/base/V1_0/DebugInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 139
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 141
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_1e
    if-ge v1, v2, :cond_2f

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/base/V1_0/DebugInfo;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hidl/base/V1_0/DebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 145
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    if-ne p0, p1, :cond_5

    .line 52
    return v7

    .line 54
    :cond_5
    if-nez p1, :cond_8

    .line 55
    return v6

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hidl/base/V1_0/DebugInfo;

    if-eq v1, v2, :cond_11

    .line 58
    return v6

    :cond_11
    move-object v0, p1

    .line 60
    check-cast v0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 61
    .local v0, "other":Landroid/hidl/base/V1_0/DebugInfo;
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    iget v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    if-eq v1, v2, :cond_1b

    .line 62
    return v6

    .line 64
    :cond_1b
    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    iget-wide v4, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_24

    .line 65
    return v6

    .line 67
    :cond_24
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    iget v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    if-eq v1, v2, :cond_2b

    .line 68
    return v6

    .line 70
    :cond_2b
    return v7
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 78
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
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
    .line 123
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 124
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 125
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 126
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 96
    const-wide/16 v2, 0x18

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 97
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hidl/base/V1_0/DebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 98
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, ".pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, ", .ptr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, ", .arch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-static {v1}, Landroid/hidl/base/V1_0/DebugInfo$Architecture;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 155
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 129
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method
