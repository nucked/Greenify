.class Larm;
.super Ljava/lang/Object;

# interfaces
.implements Laqc;
.implements Laqd;


# instance fields
.field final synthetic a:Lare;


# direct methods
.method private constructor <init>(Lare;)V
    .locals 0

    iput-object p1, p0, Larm;->a:Lare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lare;Larf;)V
    .locals 0

    invoke-direct {p0, p1}, Larm;-><init>(Lare;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0}, Lare;->f(Lare;)Lbas;

    move-result-object v0

    new-instance v1, Lark;

    iget-object v2, p0, Larm;->a:Lare;

    invoke-direct {v1, v2}, Lark;-><init>(Lare;)V

    invoke-interface {v0, v1}, Lbas;->a(Lbcr;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0}, Lare;->c(Lare;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0, p1}, Lare;->b(Lare;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0}, Lare;->i(Lare;)V

    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0}, Lare;->j(Lare;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0}, Lare;->c(Lare;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Larm;->a:Lare;

    invoke-static {v0, p1}, Lare;->a(Lare;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larm;->a:Lare;

    invoke-static {v1}, Lare;->c(Lare;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
