.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintError;
.super Ljava/lang/Object;
.source "FingerprintError.java"


# static fields
.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final ERROR_VENDOR:I = 0x8


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
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_11

    .line 49
    const-string/jumbo v2, "ERROR_NO_ERROR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x0

    .line 52
    :cond_11
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 53
    const-string/jumbo v2, "ERROR_HW_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    or-int/lit8 v0, v0, 0x1

    .line 56
    :cond_1e
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 57
    const-string/jumbo v2, "ERROR_UNABLE_TO_PROCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    or-int/lit8 v0, v0, 0x2

    .line 60
    :cond_2b
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 61
    const-string/jumbo v2, "ERROR_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/lit8 v0, v0, 0x3

    .line 64
    :cond_38
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 65
    const-string/jumbo v2, "ERROR_NO_SPACE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v0, v0, 0x4

    .line 68
    :cond_45
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_52

    .line 69
    const-string/jumbo v2, "ERROR_CANCELED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x5

    .line 72
    :cond_52
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 73
    const-string/jumbo v2, "ERROR_UNABLE_TO_REMOVE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, 0x6

    .line 76
    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6c

    .line 77
    const-string/jumbo v2, "ERROR_LOCKOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, 0x7

    .line 80
    :cond_6c
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7a

    .line 81
    const-string/jumbo v2, "ERROR_VENDOR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, 0x8

    .line 84
    :cond_7a
    if-eq p0, v0, :cond_99

    .line 85
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

    .line 87
    :cond_99
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 15
    if-nez p0, :cond_6

    .line 16
    const-string/jumbo v0, "ERROR_NO_ERROR"

    return-object v0

    .line 18
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 19
    const-string/jumbo v0, "ERROR_HW_UNAVAILABLE"

    return-object v0

    .line 21
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 22
    const-string/jumbo v0, "ERROR_UNABLE_TO_PROCESS"

    return-object v0

    .line 24
    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 25
    const-string/jumbo v0, "ERROR_TIMEOUT"

    return-object v0

    .line 27
    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 28
    const-string/jumbo v0, "ERROR_NO_SPACE"

    return-object v0

    .line 30
    :cond_22
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 31
    const-string/jumbo v0, "ERROR_CANCELED"

    return-object v0

    .line 33
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_30

    .line 34
    const-string/jumbo v0, "ERROR_UNABLE_TO_REMOVE"

    return-object v0

    .line 36
    :cond_30
    const/4 v0, 0x7

    if-ne p0, v0, :cond_37

    .line 37
    const-string/jumbo v0, "ERROR_LOCKOUT"

    return-object v0

    .line 39
    :cond_37
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3f

    .line 40
    const-string/jumbo v0, "ERROR_VENDOR"

    return-object v0

    .line 42
    :cond_3f
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
