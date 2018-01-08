.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintAcquiredInfo;
.super Ljava/lang/Object;
.source "FingerprintAcquiredInfo.java"


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final ACQUIRED_PARTIAL:I = 0x1

.field public static final ACQUIRED_TOO_FAST:I = 0x5

.field public static final ACQUIRED_TOO_SLOW:I = 0x4

.field public static final ACQUIRED_VENDOR:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_11

    .line 41
    const-string/jumbo v2, "ACQUIRED_GOOD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v0, 0x0

    .line 44
    :cond_11
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 45
    const-string/jumbo v2, "ACQUIRED_PARTIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v0, v0, 0x1

    .line 48
    :cond_1e
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 49
    const-string/jumbo v2, "ACQUIRED_INSUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v0, v0, 0x2

    .line 52
    :cond_2b
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 53
    const-string/jumbo v2, "ACQUIRED_IMAGER_DIRTY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v0, v0, 0x3

    .line 56
    :cond_38
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 57
    const-string/jumbo v2, "ACQUIRED_TOO_SLOW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0x4

    .line 60
    :cond_45
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_52

    .line 61
    const-string/jumbo v2, "ACQUIRED_TOO_FAST"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x5

    .line 64
    :cond_52
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 65
    const-string/jumbo v2, "ACQUIRED_VENDOR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x6

    .line 68
    :cond_5f
    if-eq p0, v0, :cond_7e

    .line 69
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

    .line 71
    :cond_7e
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 13
    if-nez p0, :cond_6

    .line 14
    const-string/jumbo v0, "ACQUIRED_GOOD"

    return-object v0

    .line 16
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 17
    const-string/jumbo v0, "ACQUIRED_PARTIAL"

    return-object v0

    .line 19
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 20
    const-string/jumbo v0, "ACQUIRED_INSUFFICIENT"

    return-object v0

    .line 22
    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 23
    const-string/jumbo v0, "ACQUIRED_IMAGER_DIRTY"

    return-object v0

    .line 25
    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 26
    const-string/jumbo v0, "ACQUIRED_TOO_SLOW"

    return-object v0

    .line 28
    :cond_22
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 29
    const-string/jumbo v0, "ACQUIRED_TOO_FAST"

    return-object v0

    .line 31
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_30

    .line 32
    const-string/jumbo v0, "ACQUIRED_VENDOR"

    return-object v0

    .line 34
    :cond_30
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
