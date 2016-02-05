.class public Lcbd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final g:Lcbd;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Lail;

.field private final d:Laiv;

.field private final e:Lcbh;

.field private final f:Lckt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oasisfeng"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.stericson"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.emilsjolander"

    aput-object v2, v0, v1

    sput-object v0, Lcbd;->a:[Ljava/lang/String;

    .line 173
    new-instance v0, Lcbd;

    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcbd;->g:Lcbd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {}, Lckx;->a()Lcla;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Lcla;->a(J)Lcla;

    move-result-object v1

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcla;->a(JJLjava/util/concurrent/TimeUnit;)Lcla;

    move-result-object v0

    invoke-virtual {v0}, Lcla;->a()Lckw;

    move-result-object v0

    iput-object v0, p0, Lcbd;->f:Lckt;

    .line 49
    invoke-static {p1}, Lail;->a(Landroid/content/Context;)Lail;

    move-result-object v0

    iput-object v0, p0, Lcbd;->c:Lail;

    .line 54
    iget-object v0, p0, Lcbd;->c:Lail;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Lail;->a(I)Laiv;

    move-result-object v0

    iput-object v0, p0, Lcbd;->d:Laiv;

    .line 55
    invoke-static {p1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "opt-out-analytics"

    invoke-interface {v0, v1}, Lbvt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbd;->c:Lail;

    invoke-virtual {v0, v7}, Lail;->b(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcbd;->d:Laiv;

    invoke-virtual {v0, v7}, Laiv;->c(Z)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcbd;->a:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcbd;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcbh;

    invoke-direct {v1, v0}, Lcbh;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcbd;->e:Lcbh;

    .line 64
    new-instance v0, Laik;

    iget-object v1, p0, Lcbd;->d:Laiv;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Laik;-><init>(Laiv;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcbd;->e:Lcbh;

    invoke-virtual {v0, v1}, Laik;->a(Laij;)V

    .line 66
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 68
    return-void
.end method

.method public static a()Lcbd;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcbd;->g:Lcbd;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    .locals 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    const-string v1, "Analytics"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event [Category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcbp;->a()Lcbp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analytics.disabled.category."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbp;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 149
    :goto_2
    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Label="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Value="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {}, Lcbp;->a()Lcbp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analytics.disabled.categorized.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_2

    .line 145
    :cond_3
    new-instance v0, Laip;

    invoke-direct {v0}, Laip;-><init>()V

    invoke-virtual {v0, p1}, Laip;->a(Ljava/lang/String;)Laip;

    move-result-object v0

    invoke-virtual {v0, p2}, Laip;->b(Ljava/lang/String;)Laip;

    move-result-object v0

    .line 146
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Laip;->c(Ljava/lang/String;)Laip;

    .line 147
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Laip;->a(J)Laip;

    .line 148
    :cond_5
    iget-object v1, p0, Lcbd;->d:Laiv;

    invoke-virtual {v0}, Laip;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Laiv;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 149
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p1}, Lcbi;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p2, p3, v1}, Lcbd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p1}, Lcbi;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcbd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcbi;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Long;)Lcbd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcbi;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Lcbd;"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x100

    if-le v1, v4, :cond_1

    .line 121
    :cond_0
    return-object p0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcbi;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0, p4}, Lcbd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move v1, v2

    .line 120
    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcbd;
    .locals 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 111
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcbd;->b:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcbd;->f:Lckt;

    invoke-interface {v0}, Lckt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception report dropped by token bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcbd;->d:Laiv;

    new-instance v1, Laiq;

    invoke-direct {v1}, Laiq;-><init>()V

    invoke-virtual {v1, p1}, Laiq;->a(Ljava/lang/String;)Laiq;

    move-result-object v1

    invoke-virtual {v1}, Laiq;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Laiv;->a(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 111
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;
    .locals 2

    .prologue
    .line 133
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcbd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcbd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {p0, p2, p3}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-static {}, Lcbp;->a()Lcbp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analytics.disabled.exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbp;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 96
    :goto_0
    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcbd;->e:Lcbh;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcbh;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-nez p1, :cond_1

    .line 96
    :goto_1
    invoke-virtual {p0, v0}, Lcbd;->a(Ljava/lang/String;)Lcbd;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbd;->d:Laiv;

    invoke-static {p1}, Lcbe;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string v0, "InternalAction"

    const-string v1, "OptOut"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 158
    invoke-static {p1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "opt-out-analytics"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    .line 160
    return-void
.end method

.method public declared-synchronized a(Lcbj;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbd;->d:Laiv;

    invoke-virtual {p1}, Lcbj;->a()I

    move-result v1

    invoke-static {v1}, Lcbe;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcbp;->a()Lcbp;

    move-result-object v0

    invoke-virtual {p1}, Lcbj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcbp;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Laiv;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcbd;->d:Laiv;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v0, "InternalAction"

    const-string v1, "OptIn"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 164
    invoke-static {p1}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "opt-out-analytics"

    invoke-interface {v0, v1}, Lbvt;->c(Ljava/lang/String;)Z

    .line 165
    iget-object v0, p0, Lcbd;->c:Lail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lail;->b(Z)V

    .line 166
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcbd;->c:Lail;

    invoke-virtual {v0}, Lail;->f()Z

    move-result v0

    return v0
.end method
