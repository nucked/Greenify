.class public Lasr;
.super Laqp;

# interfaces
.implements Laqm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Laql;",
        ">",
        "Laqp",
        "<TR;>;",
        "Laqm",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private a:Laqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqo",
            "<-TR;+",
            "Laql;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lasr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasr",
            "<+",
            "Laql;",
            ">;"
        }
    .end annotation
.end field

.field private c:Laqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqn",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private d:Laqg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqg",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/common/api/Status;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lapz;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Last;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasr",
            "<TR;>.ast;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lasr;)Laqo;
    .locals 1

    iget-object v0, p0, Lasr;->a:Laqo;

    return-object v0
.end method

.method static synthetic a(Lasr;Laql;)V
    .locals 0

    invoke-direct {p0, p1}, Lasr;->b(Laql;)V

    return-void
.end method

.method static synthetic a(Lasr;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lasr;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lasr;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lasr;->f:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lasr;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lasr;->b(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lasr;)Last;
    .locals 1

    iget-object v0, p0, Lasr;->h:Last;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lasr;->a:Laqo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lasr;->c:Laqn;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lasr;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    iget-object v1, p0, Lasr;->a:Laqo;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lapz;->a(Lasr;)V

    :cond_2
    iget-object v0, p0, Lasr;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lasr;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lasr;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lasr;->d:Laqg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasr;->d:Laqg;

    invoke-virtual {v0, p0}, Laqg;->a(Laqm;)V

    goto :goto_0
.end method

.method private b(Laql;)V
    .locals 5

    instance-of v1, p1, Laqk;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

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

    const-string v2, "TransformedResultImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Lasr;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lasr;->a:Laqo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lasr;->a:Laqo;

    invoke-virtual {v0, p1}, Laqo;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lasr;->b:Lasr;

    invoke-direct {v2, v0}, Lasr;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lasr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasr;->c:Laqn;

    invoke-virtual {v0, p1}, Laqn;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lasr;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lasr;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lasr;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    iget-object v1, p0, Lasr;->c:Laqn;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lasr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lasr;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lasr;)Lasr;
    .locals 1

    iget-object v0, p0, Lasr;->b:Lasr;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v1, p0, Lasr;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lasr;->c:Laqn;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Laqg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqg",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lasr;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lasr;->d:Laqg;

    invoke-direct {p0}, Lasr;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Laql;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lasr;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Laql;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasr;->a:Laqo;

    if-eqz v0, :cond_1

    invoke-static {}, Lask;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lass;

    invoke-direct {v2, p0, p1}, Lass;-><init>(Lasr;Laql;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lasr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasr;->c:Laqn;

    invoke-virtual {v0, p1}, Laqn;->b(Laql;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Laql;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lasr;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lasr;->b(Laql;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
