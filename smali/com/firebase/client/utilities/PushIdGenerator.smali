.class public Lcom/firebase/client/utilities/PushIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lcom/firebase/client/utilities/PushIdGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/utilities/PushIdGenerator;->$assertionsDisabled:Z

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/firebase/client/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/firebase/client/utilities/PushIdGenerator;->lastPushTime:J

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0xc

    const/4 v0, 0x0

    .line 22
    const-class v3, Lcom/firebase/client/utilities/PushIdGenerator;

    monitor-enter v3

    :try_start_0
    sget-wide v4, Lcom/firebase/client/utilities/PushIdGenerator;->lastPushTime:J

    cmp-long v1, p0, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    .line 23
    :goto_0
    sput-wide p0, Lcom/firebase/client/utilities/PushIdGenerator;->lastPushTime:J

    .line 25
    const/16 v1, 0x8

    new-array v4, v1, [C

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    const/4 v1, 0x7

    :goto_1
    if-ltz v1, :cond_1

    .line 28
    const-string v6, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v8, 0x40

    rem-long v8, p0, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v1

    .line 29
    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    .line 27
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 22
    goto :goto_0

    .line 31
    :cond_1
    sget-boolean v1, Lcom/firebase/client/utilities/PushIdGenerator;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 33
    :cond_2
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 35
    if-nez v2, :cond_3

    move v1, v0

    .line 36
    :goto_2
    if-ge v1, v10, :cond_4

    .line 37
    sget-object v2, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v4, Lcom/firebase/client/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v2, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_3
    invoke-static {}, Lcom/firebase/client/utilities/PushIdGenerator;->incrementArray()V

    .line 43
    :cond_4
    :goto_3
    if-ge v0, v10, :cond_5

    .line 44
    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    sget-object v2, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 46
    :cond_5
    sget-boolean v0, Lcom/firebase/client/utilities/PushIdGenerator;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v0, v11, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0
.end method

.method private static incrementArray()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_0

    .line 52
    sget-object v1, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    aget v1, v1, v0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    .line 53
    sget-object v1, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v2, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    sget-object v1, Lcom/firebase/client/utilities/PushIdGenerator;->lastRandChars:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
