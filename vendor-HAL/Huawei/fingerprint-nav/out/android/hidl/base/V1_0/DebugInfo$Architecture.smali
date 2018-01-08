.class public final Landroid/hidl/base/V1_0/DebugInfo$Architecture;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/base/V1_0/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Architecture"
.end annotation


# static fields
.field public static final IS_32BIT:I = 0x2

.field public static final IS_64BIT:I = 0x1

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .prologue
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 25
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_11

    .line 26
    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const/4 v0, 0x0

    .line 29
    :cond_11
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 30
    const-string/jumbo v2, "IS_64BIT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    or-int/lit8 v0, v0, 0x1

    .line 33
    :cond_1e
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 34
    const-string/jumbo v2, "IS_32BIT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    or-int/lit8 v0, v0, 0x2

    .line 37
    :cond_2b
    if-eq p0, v0, :cond_4a

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_4a
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 10
    if-nez p0, :cond_6

    .line 11
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 13
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 14
    const-string/jumbo v0, "IS_64BIT"

    return-object v0

    .line 16
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 17
    const-string/jumbo v0, "IS_32BIT"

    return-object v0

    .line 19
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
