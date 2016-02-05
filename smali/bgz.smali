.class Lbgz;
.super Ljava/lang/Object;

# interfaces
.implements Lbjs;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lbhc;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lbjw;

.field private h:Ljava/lang/String;

.field private i:Lbfm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbfm",
            "<",
            "Laxf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbjw;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lbgz;-><init>(Landroid/content/Context;Ljava/lang/String;Lbjw;Lbhd;Lbhc;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbjw;Lbhd;Lbhc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbgz;->g:Lbjw;

    iput-object p1, p0, Lbgz;->b:Landroid/content/Context;

    iput-object p2, p0, Lbgz;->a:Ljava/lang/String;

    if-nez p4, :cond_0

    new-instance p4, Lbha;

    invoke-direct {p4, p0}, Lbha;-><init>(Lbgz;)V

    :cond_0
    invoke-interface {p4}, Lbhd;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbgz;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p5, :cond_1

    new-instance v0, Lbhb;

    invoke-direct {v0, p0}, Lbhb;-><init>(Lbgz;)V

    iput-object v0, p0, Lbgz;->d:Lbhc;

    :goto_0
    return-void

    :cond_1
    iput-object p5, p0, Lbgz;->d:Lbhc;

    goto :goto_0
.end method

.method static synthetic a(Lbgz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgz;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lbgy;
    .locals 2

    iget-object v0, p0, Lbgz;->d:Lbhc;

    iget-object v1, p0, Lbgz;->g:Lbjw;

    invoke-interface {v0, v1}, Lbhc;->a(Lbjw;)Lbgy;

    move-result-object v0

    iget-object v1, p0, Lbgz;->i:Lbfm;

    invoke-virtual {v0, v1}, Lbgy;->a(Lbfm;)V

    iget-object v1, p0, Lbgz;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbgy;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lbgy;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lbgz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbgz;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbgz;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbgz;->b()V

    iget-object v0, p0, Lbgz;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgz;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lbgz;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgz;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAfterDelay: containerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbgz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lbgz;->b()V

    iget-object v0, p0, Lbgz;->i:Lbfm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before loadAfterDelay() is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbgz;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgz;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lbgz;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p3}, Lbgz;->b(Ljava/lang/String;)Lbgy;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lbgz;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lbfm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfm",
            "<",
            "Laxf;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbgz;->b()V

    iput-object p1, p0, Lbgz;->i:Lbfm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbgz;->b()V

    iput-object p1, p0, Lbgz;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
