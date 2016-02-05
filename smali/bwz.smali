.class public Lbwz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbwy;

.field private b:Z


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 2

    .prologue
    .line 18
    iput-object p1, p0, Lbwz;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lbwy;->a(Lbwy;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 20
    invoke-static {p1}, Lbwy;->b(Lbwy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbwz;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbwz;->a:Lbwy;

    invoke-static {v0}, Lbwy;->b(Lbwy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lbwz;->a:Lbwy;

    invoke-static {v0}, Lbwy;->a(Lbwy;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 30
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbwz;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
