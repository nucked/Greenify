.class Lbji;
.super Ljava/lang/Object;

# interfaces
.implements Lbdi;


# instance fields
.field private final a:Landroid/os/Looper;

.field private b:Lbdc;

.field private c:Lbdc;

.field private d:Lcom/google/android/gms/common/api/Status;

.field private e:Lbjk;

.field private f:Lbjj;

.field private g:Z

.field private h:Lbds;


# direct methods
.method public constructor <init>(Lbds;Landroid/os/Looper;Lbdc;Lbjj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbji;->h:Lbds;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lbji;->a:Landroid/os/Looper;

    iput-object p3, p0, Lbji;->b:Lbdc;

    iput-object p4, p0, Lbji;->f:Lbjj;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lbji;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p0}, Lbds;->a(Lbji;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbji;->d:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->a:Landroid/os/Looper;

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lbji;->e:Lbjk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbji;->e:Lbjk;

    iget-object v1, p0, Lbji;->c:Lbdc;

    invoke-virtual {v1}, Lbdc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjk;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "Releasing a released ContainerHolder."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbji;->g:Z

    iget-object v0, p0, Lbji;->h:Lbds;

    invoke-virtual {v0, p0}, Lbds;->b(Lbji;)Z

    iget-object v0, p0, Lbji;->b:Lbdc;

    invoke-virtual {v0}, Lbdc;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->b:Lbdc;

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->c:Lbdc;

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->f:Lbjj;

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->e:Lbjk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lbdc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbji;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string v0, "Unexpected null container."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iput-object p1, p0, Lbji;->c:Lbdc;

    invoke-direct {p0}, Lbji;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lbdj;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "ContainerHolder is released."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lbji;->e:Lbjk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lbjk;

    iget-object v1, p0, Lbji;->a:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lbjk;-><init>(Lbji;Lbdj;Landroid/os/Looper;)V

    iput-object v0, p0, Lbji;->e:Lbjk;

    iget-object v0, p0, Lbji;->c:Lbdc;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbji;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbji;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbji;->b:Lbdc;

    invoke-virtual {v0, p1}, Lbdc;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lbji;->d:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbji;->f:Lbjj;

    invoke-interface {v0, p1}, Lbjj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized c()Lbdc;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbji;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "ContainerHolder is released."

    invoke-static {v1}, Lbfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbji;->c:Lbdc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbji;->c:Lbdc;

    iput-object v0, p0, Lbji;->b:Lbdc;

    const/4 v0, 0x0

    iput-object v0, p0, Lbji;->c:Lbdc;

    :cond_1
    iget-object v0, p0, Lbji;->b:Lbdc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing a released ContainerHolder."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbji;->f:Lbjj;

    invoke-interface {v0}, Lbjj;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "getContainerId called on a released ContainerHolder."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbji;->b:Lbdc;

    invoke-virtual {v0}, Lbdc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lbji;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbji;->f:Lbjj;

    invoke-interface {v0}, Lbjj;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
