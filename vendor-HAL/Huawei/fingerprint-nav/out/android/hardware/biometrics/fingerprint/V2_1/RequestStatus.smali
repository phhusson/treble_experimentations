.class public final Landroid/hardware/biometrics/fingerprint/V2_1/RequestStatus;
.super Ljava/lang/Object;
.source "RequestStatus.java"


# static fields
.field public static final SYS_EACCES:I = -0xd

.field public static final SYS_EAGAIN:I = -0xb

.field public static final SYS_EBUSY:I = -0x10

.field public static final SYS_EFAULT:I = -0xe

.field public static final SYS_EINTR:I = -0x4

.field public static final SYS_EINVAL:I = -0x16

.field public static final SYS_EIO:I = -0x5

.field public static final SYS_ENOENT:I = -0x2

.field public static final SYS_ENOMEM:I = -0xc

.field public static final SYS_ENOSPC:I = -0x1c

.field public static final SYS_ETIMEDOUT:I = -0x6e

.field public static final SYS_OK:I = 0x0

.field public static final SYS_UNKNOWN:I = 0x1


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
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 64
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 65
    const-string/jumbo v2, "SYS_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_12
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_1e

    .line 69
    const-string/jumbo v2, "SYS_OK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v0, v0, 0x0

    .line 72
    :cond_1e
    and-int/lit8 v2, p0, -0x2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2b

    .line 73
    const-string/jumbo v2, "SYS_ENOENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v0, v0, -0x2

    .line 76
    :cond_2b
    and-int/lit8 v2, p0, -0x4

    const/4 v3, -0x4

    if-ne v2, v3, :cond_38

    .line 77
    const-string/jumbo v2, "SYS_EINTR"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v0, v0, -0x4

    .line 80
    :cond_38
    and-int/lit8 v2, p0, -0x5

    const/4 v3, -0x5

    if-ne v2, v3, :cond_45

    .line 81
    const-string/jumbo v2, "SYS_EIO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v0, v0, -0x5

    .line 84
    :cond_45
    and-int/lit8 v2, p0, -0xb

    const/16 v3, -0xb

    if-ne v2, v3, :cond_53

    .line 85
    const-string/jumbo v2, "SYS_EAGAIN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v0, v0, -0xb

    .line 88
    :cond_53
    and-int/lit8 v2, p0, -0xc

    const/16 v3, -0xc

    if-ne v2, v3, :cond_61

    .line 89
    const-string/jumbo v2, "SYS_ENOMEM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v0, v0, -0xc

    .line 92
    :cond_61
    and-int/lit8 v2, p0, -0xd

    const/16 v3, -0xd

    if-ne v2, v3, :cond_6f

    .line 93
    const-string/jumbo v2, "SYS_EACCES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v0, v0, -0xd

    .line 96
    :cond_6f
    and-int/lit8 v2, p0, -0xe

    const/16 v3, -0xe

    if-ne v2, v3, :cond_7d

    .line 97
    const-string/jumbo v2, "SYS_EFAULT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v0, v0, -0xe

    .line 100
    :cond_7d
    and-int/lit8 v2, p0, -0x10

    const/16 v3, -0x10

    if-ne v2, v3, :cond_8b

    .line 101
    const-string/jumbo v2, "SYS_EBUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v0, v0, -0x10

    .line 104
    :cond_8b
    and-int/lit8 v2, p0, -0x16

    const/16 v3, -0x16

    if-ne v2, v3, :cond_99

    .line 105
    const-string/jumbo v2, "SYS_EINVAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v0, v0, -0x16

    .line 108
    :cond_99
    and-int/lit8 v2, p0, -0x1c

    const/16 v3, -0x1c

    if-ne v2, v3, :cond_a7

    .line 109
    const-string/jumbo v2, "SYS_ENOSPC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v0, v0, -0x1c

    .line 112
    :cond_a7
    and-int/lit8 v2, p0, -0x6e

    const/16 v3, -0x6e

    if-ne v2, v3, :cond_b5

    .line 113
    const-string/jumbo v2, "SYS_ETIMEDOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v0, v0, -0x6e

    .line 116
    :cond_b5
    if-eq p0, v0, :cond_d4

    .line 117
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

    .line 119
    :cond_d4
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 19
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 20
    const-string/jumbo v0, "SYS_UNKNOWN"

    return-object v0

    .line 22
    :cond_7
    if-nez p0, :cond_d

    .line 23
    const-string/jumbo v0, "SYS_OK"

    return-object v0

    .line 25
    :cond_d
    const/4 v0, -0x2

    if-ne p0, v0, :cond_14

    .line 26
    const-string/jumbo v0, "SYS_ENOENT"

    return-object v0

    .line 28
    :cond_14
    const/4 v0, -0x4

    if-ne p0, v0, :cond_1b

    .line 29
    const-string/jumbo v0, "SYS_EINTR"

    return-object v0

    .line 31
    :cond_1b
    const/4 v0, -0x5

    if-ne p0, v0, :cond_22

    .line 32
    const-string/jumbo v0, "SYS_EIO"

    return-object v0

    .line 34
    :cond_22
    const/16 v0, -0xb

    if-ne p0, v0, :cond_2a

    .line 35
    const-string/jumbo v0, "SYS_EAGAIN"

    return-object v0

    .line 37
    :cond_2a
    const/16 v0, -0xc

    if-ne p0, v0, :cond_32

    .line 38
    const-string/jumbo v0, "SYS_ENOMEM"

    return-object v0

    .line 40
    :cond_32
    const/16 v0, -0xd

    if-ne p0, v0, :cond_3a

    .line 41
    const-string/jumbo v0, "SYS_EACCES"

    return-object v0

    .line 43
    :cond_3a
    const/16 v0, -0xe

    if-ne p0, v0, :cond_42

    .line 44
    const-string/jumbo v0, "SYS_EFAULT"

    return-object v0

    .line 46
    :cond_42
    const/16 v0, -0x10

    if-ne p0, v0, :cond_4a

    .line 47
    const-string/jumbo v0, "SYS_EBUSY"

    return-object v0

    .line 49
    :cond_4a
    const/16 v0, -0x16

    if-ne p0, v0, :cond_52

    .line 50
    const-string/jumbo v0, "SYS_EINVAL"

    return-object v0

    .line 52
    :cond_52
    const/16 v0, -0x1c

    if-ne p0, v0, :cond_5a

    .line 53
    const-string/jumbo v0, "SYS_ENOSPC"

    return-object v0

    .line 55
    :cond_5a
    const/16 v0, -0x6e

    if-ne p0, v0, :cond_62

    .line 56
    const-string/jumbo v0, "SYS_ETIMEDOUT"

    return-object v0

    .line 58
    :cond_62
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
