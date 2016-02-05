.class public Lbdy;
.super Ljava/lang/Object;


# static fields
.field private static l:Ljava/lang/Object;

.field private static m:Lbdy;


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:Z

.field private volatile d:Laic;

.field private volatile e:J

.field private volatile f:J

.field private final g:Landroid/content/Context;

.field private final h:Lazo;

.field private final i:Ljava/lang/Thread;

.field private final j:Ljava/lang/Object;

.field private k:Lbeb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbdy;->l:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lazp;->c()Lazo;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lbdy;-><init>(Landroid/content/Context;Lbeb;Lazo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbeb;Lazo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lbdy;->a:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lbdy;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbdy;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbdy;->j:Ljava/lang/Object;

    new-instance v0, Lbdz;

    invoke-direct {v0, p0}, Lbdz;-><init>(Lbdy;)V

    iput-object v0, p0, Lbdy;->k:Lbeb;

    iput-object p3, p0, Lbdy;->h:Lazo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbdy;->g:Landroid/content/Context;

    :goto_0
    if-eqz p2, :cond_0

    iput-object p2, p0, Lbdy;->k:Lbeb;

    :cond_0
    iget-object v0, p0, Lbdy;->h:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbdy;->e:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbea;

    invoke-direct {v1, p0}, Lbea;-><init>(Lbdy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbdy;->i:Ljava/lang/Thread;

    return-void

    :cond_1
    iput-object p1, p0, Lbdy;->g:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Lbdy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbdy;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lbdy;
    .locals 2

    sget-object v0, Lbdy;->m:Lbdy;

    if-nez v0, :cond_1

    sget-object v1, Lbdy;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbdy;->m:Lbdy;

    if-nez v0, :cond_0

    new-instance v0, Lbdy;

    invoke-direct {v0, p0}, Lbdy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbdy;->m:Lbdy;

    sget-object v0, Lbdy;->m:Lbdy;

    invoke-virtual {v0}, Lbdy;->c()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lbdy;->m:Lbdy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbdy;)V
    .locals 0

    invoke-direct {p0}, Lbdy;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbdy;->e()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lbdy;->h:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lbdy;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lbdy;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Lbdy;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbdy;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbdy;->h:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbdy;->e:J

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lbdy;->h:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lbdy;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lbdy;->d:Laic;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lbdy;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbdy;->k:Lbeb;

    invoke-interface {v0}, Lbeb;->a()Laic;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lbdy;->d:Laic;

    iget-object v0, p0, Lbdy;->h:Lazo;

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbdy;->f:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    invoke-static {v0}, Lbfo;->c(Ljava/lang/String;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lbdy;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lbdy;->j:Ljava/lang/Object;

    iget-wide v2, p0, Lbdy;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lbfo;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbdy;->d:Laic;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbdy;->d()V

    :goto_0
    invoke-direct {p0}, Lbdy;->f()V

    iget-object v0, p0, Lbdy;->d:Laic;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lbdy;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbdy;->d:Laic;

    invoke-virtual {v0}, Laic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lbdy;->d:Laic;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbdy;->d()V

    :goto_0
    invoke-direct {p0}, Lbdy;->f()V

    iget-object v0, p0, Lbdy;->d:Laic;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lbdy;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbdy;->d:Laic;

    invoke-virtual {v0}, Laic;->b()Z

    move-result v0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbdy;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
