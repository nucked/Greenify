.class public abstract Laqu;
.super Laqg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Laql;",
        ">",
        "Laqg",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lapz;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field protected final d:Laqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqv",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laqh;",
            ">;"
        }
    .end annotation
.end field

.field private f:Laqm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqm",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private volatile g:Laql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Laur;

.field private m:Ljava/lang/Integer;

.field private volatile n:Lasr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasr",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Laqg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laqu;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Laqu;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqu;->e:Ljava/util/ArrayList;

    new-instance v0, Laqv;

    invoke-direct {v0, p1}, Laqv;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laqu;->d:Laqv;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laqu;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lapz;)V
    .locals 2

    invoke-direct {p0}, Laqg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laqu;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Laqu;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqu;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lapz;->c()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Laqv;

    invoke-direct {v1, v0}, Laqv;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Laqu;->d:Laqv;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laqu;->b:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Laql;)V
    .locals 5

    instance-of v1, p0, Laqk;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Laqk;

    move-object v1, v0

    invoke-interface {v1}, Laqk;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "BasePendingResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Laql;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Laqu;->g:Laql;

    const/4 v0, 0x0

    iput-object v0, p0, Laqu;->l:Laur;

    iget-object v0, p0, Laqu;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Laqu;->g:Laql;

    invoke-interface {v0}, Laql;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v0, p0, Laqu;->f:Laqm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqu;->d:Laqv;

    invoke-virtual {v0}, Laqv;->a()V

    iget-boolean v0, p0, Laqu;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laqu;->d:Laqv;

    iget-object v2, p0, Laqu;->f:Laqm;

    invoke-direct {p0}, Laqu;->i()Laql;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Laqv;->a(Laqm;Laql;)V

    :cond_0
    iget-object v0, p0, Laqu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqh;

    invoke-interface {v0, v1}, Laqh;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laqu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private i()Laql;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Laqu;->h:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Laqu;->e()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Laqu;->g:Laql;

    const/4 v2, 0x0

    iput-object v2, p0, Laqu;->g:Laql;

    const/4 v2, 0x0

    iput-object v2, p0, Laqu;->f:Laqm;

    const/4 v2, 0x1

    iput-boolean v2, p0, Laqu;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Laqu;->d()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Laql;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lave;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Laqu;->h:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Laqu;->n:Lasr;

    if-nez v0, :cond_4

    :goto_2
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lave;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Laqu;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqu;->d(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    invoke-virtual {p0}, Laqu;->e()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Laqu;->i()Laql;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqu;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3
.end method

.method public final a(Laql;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Laqu;->j:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Laqu;->i:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Laqu;->b(Laql;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Laqu;->e()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lave;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Laqu;->h:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Laqu;->c(Laql;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a(Laqm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqm",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Laqu;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v3, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Laqu;->n:Lasr;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set callbacks if then() has been called."

    invoke-static {v1, v0}, Lave;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Laqu;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v3

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Laqu;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Laqu;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lasr;

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Laqu;->f()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Laqu;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laqu;->d:Laqv;

    invoke-direct {p0}, Laqu;->i()Laql;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laqv;->a(Laqm;Laql;)V

    :goto_3
    monitor-exit v3

    goto :goto_2

    :cond_5
    iput-object p1, p0, Laqu;->f:Laqm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public final a(Laqm;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqm",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Laqu;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v3, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Laqu;->n:Lasr;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set callbacks if then() has been called."

    invoke-static {v1, v0}, Lave;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Laqu;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v3

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Laqu;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Laqu;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lasr;

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Laqu;->f()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Laqu;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laqu;->d:Laqv;

    invoke-direct {p0}, Laqu;->i()Laql;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laqv;->a(Laqm;Laql;)V

    :goto_3
    monitor-exit v3

    goto :goto_2

    :cond_5
    iput-object p1, p0, Laqu;->f:Laqm;

    iget-object v0, p0, Laqu;->d:Laqv;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, p0, v4, v5}, Laqv;->a(Laqu;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/Status;)Laql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Laqu;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Laqu;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laqu;->b(Lcom/google/android/gms/common/api/Status;)Laql;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqu;->a(Laql;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laqu;->j:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Laqu;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v1, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Laqu;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laqu;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laqu;->l:Laur;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Laqu;->l:Laur;

    invoke-interface {v0}, Laur;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Laqu;->g:Laql;

    invoke-static {v0}, Laqu;->b(Laql;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laqu;->f:Laqm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laqu;->i:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Laqu;->b(Lcom/google/android/gms/common/api/Status;)Laql;

    move-result-object v0

    invoke-direct {p0, v0}, Laqu;->c(Laql;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public g()V
    .locals 2

    iget-object v1, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laqu;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laqu;->f()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laqu;->f:Laqm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqu;->f:Laqm;

    instance-of v0, v0, Lasr;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqu;->k:Z

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Laqu;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public h()Z
    .locals 2

    iget-object v1, p0, Laqu;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Laqu;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
