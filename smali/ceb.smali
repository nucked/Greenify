.class public Lceb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcee;

.field private e:Lcke;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x2d24bf7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lceb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([ILcee;)V
    .locals 6

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lceb;->c:Ljava/util/List;

    .line 143
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    .line 144
    invoke-static {v3}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v4, p0, Lceb;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_1
    iput-object p2, p0, Lceb;->d:Lcee;

    .line 148
    return-void
.end method

.method private synthetic a(Landroid/os/HandlerThread;IILjava/util/List;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    if-eqz p3, :cond_0

    .line 72
    const-string v0, "Poller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create shell. code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lceb;->b:J

    .line 77
    const-string v0, "logcat -b events -v tag -s "

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 79
    const v1, 0x2d24bf7

    iget-wide v2, p0, Lceb;->b:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lceb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    iget-object v1, p0, Lceb;->e:Lcke;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-static {v3}, Lbkm;->a(C)Lbkm;

    move-result-object v3

    invoke-virtual {v3}, Lbkm;->a()Lbkm;

    move-result-object v3

    iget-object v4, p0, Lceb;->c:Ljava/util/List;

    invoke-virtual {v3, v4}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    new-instance v0, Lced;

    invoke-direct {v0, p0, p1}, Lced;-><init>(Lceb;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2, v5, v0}, Lcke;->a([Ljava/lang/String;ILckl;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-T 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lceb;Landroid/os/HandlerThread;IILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lceb;->a(Landroid/os/HandlerThread;IILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lceb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lceb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/16 v7, 0x5d

    const/16 v6, 0x5b

    const/4 v5, 0x1

    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 108
    if-le v3, v4, :cond_0

    .line 109
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lceb;->f:Z

    if-nez v0, :cond_3

    .line 113
    sget-object v0, Lceb;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lceb;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iput-boolean v5, p0, Lceb;->f:Z

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lceb;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lceb;->g:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 121
    if-ge v1, v3, :cond_6

    .line 122
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 124
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 126
    :goto_1
    if-ltz v1, :cond_4

    if-gez v0, :cond_7

    :cond_4
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_8

    .line 130
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 132
    :goto_3
    if-ne v1, v2, :cond_5

    invoke-static {v4}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    .line 135
    :cond_5
    :try_start_1
    iget-object v2, p0, Lceb;->d:Lcee;

    invoke-interface {v2, v1, v4, v0}, Lcee;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Event parsing"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto/16 :goto_0

    .line 125
    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_1

    .line 126
    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 131
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lceb;->e:Lcke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceb;->e:Lcke;

    invoke-virtual {v0}, Lcke;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    invoke-static {p1}, Lccx;->a(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Event-Processor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [I

    const/4 v2, 0x0

    const-string v3, "am_proc_start"

    invoke-static {v3}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :goto_1
    :try_start_3
    const-string v1, "Poller"

    const-string v2, "Starting monitor..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lckc;

    invoke-direct {v1}, Lckc;-><init>()V

    .line 65
    invoke-static {p1}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lckc;->a()Lckc;

    .line 67
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lckc;->a(I)Lckc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lckc;->a(Z)Lckc;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Lckc;->a(Landroid/os/Handler;)Lckc;

    .line 68
    invoke-static {p0, v0}, Lcec;->a(Lceb;Landroid/os/HandlerThread;)Lckm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lckc;->a(Lckm;)Lcke;

    move-result-object v0

    iput-object v0, p0, Lceb;->e:Lcke;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lckc;->b()Lckc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 61
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lceb;->e:Lcke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lceb;->e:Lcke;

    invoke-virtual {v0}, Lcke;->a()V

    .line 101
    :cond_0
    invoke-static {p1}, Lccx;->a(Landroid/content/Context;)V

    .line 102
    return-void
.end method
