.class public abstract Laqs;
.super Laqu;

# interfaces
.implements Laqt;
.implements Larz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Laql;",
        "A::",
        "Lapt;",
        ">",
        "Laqu",
        "<TR;>;",
        "Laqt",
        "<TR;>;",
        "Larz",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final a:Lapu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapu",
            "<TA;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lapu;Lapz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapu",
            "<TA;>;",
            "Lapz;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    invoke-direct {p0, v0}, Laqu;-><init>(Lapz;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Laqs;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapu;

    iput-object v0, p0, Laqs;->a:Lapu;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Laqs;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final a()Lapu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapu",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Laqs;->a:Lapu;

    return-object v0
.end method

.method protected abstract a(Lapt;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public a(Lary;)V
    .locals 1

    iget-object v0, p0, Laqs;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Laql;

    invoke-super {p0, p1}, Laqu;->a(Laql;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laqs;->a(Laqm;)V

    return-void
.end method

.method public final b(Lapt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Laqs;->a(Lapt;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Laqs;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Laqs;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Laqs;->b(Lcom/google/android/gms/common/api/Status;)Laql;

    move-result-object v0

    invoke-virtual {p0, v0}, Laqs;->a(Laql;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Laqs;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lary;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lary;->a(Larz;)V

    :cond_0
    return-void
.end method
