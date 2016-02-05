.class public abstract Latx;
.super Ljava/lang/Object;

# interfaces
.implements Lapt;
.implements Lauh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lapt;",
        "Lauh;"
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Handler;

.field protected b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private final i:Landroid/content/Context;

.field private final j:Lats;

.field private final k:Landroid/os/Looper;

.field private final l:Laui;

.field private final m:Lavu;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:Lauv;

.field private q:Laqe;

.field private r:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Latx",
            "<TT;>.aua<*>;>;"
        }
    .end annotation
.end field

.field private t:Lauc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latx",
            "<TT;>.auc;"
        }
    .end annotation
.end field

.field private u:I

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/accounts/Account;

.field private final x:Laqc;

.field private final y:Laqd;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Latx;->c:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILats;Laqc;Laqd;)V
    .locals 9

    invoke-static {p1}, Laui;->a(Landroid/content/Context;)Laui;

    move-result-object v3

    invoke-static {}, Lavu;->b()Lavu;

    move-result-object v4

    invoke-static {p5}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laqc;

    invoke-static {p6}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laqd;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Latx;-><init>(Landroid/content/Context;Landroid/os/Looper;Laui;Lavu;ILats;Laqc;Laqd;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Laui;Lavu;ILats;Laqc;Laqd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Latx;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Latx;->o:Ljava/lang/Object;

    new-instance v0, Laud;

    invoke-direct {v0, p0}, Laud;-><init>(Latx;)V

    iput-object v0, p0, Latx;->q:Laqe;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latx;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Latx;->u:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Latx;->i:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Latx;->k:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laui;

    iput-object v0, p0, Latx;->l:Laui;

    const-string v0, "API availability must not be null"

    invoke-static {p4, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavu;

    iput-object v0, p0, Latx;->m:Lavu;

    new-instance v0, Latz;

    invoke-direct {v0, p0, p2}, Latz;-><init>(Latx;Landroid/os/Looper;)V

    iput-object v0, p0, Latx;->a:Landroid/os/Handler;

    iput p5, p0, Latx;->z:I

    invoke-static {p6}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lats;

    iput-object v0, p0, Latx;->j:Lats;

    invoke-virtual {p6}, Lats;->b()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Latx;->w:Landroid/accounts/Account;

    invoke-virtual {p6}, Lats;->e()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Latx;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Latx;->v:Ljava/util/Set;

    iput-object p7, p0, Latx;->x:Laqc;

    iput-object p8, p0, Latx;->y:Laqd;

    return-void
.end method

.method static synthetic a(Latx;Lauv;)Lauv;
    .locals 0

    iput-object p1, p0, Latx;->p:Lauv;

    return-object p1
.end method

.method static synthetic a(Latx;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Latx;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Latx;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Latx;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method private a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Latx;->u:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Latx;->b(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Latx;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Latx;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Latx;)Laqe;
    .locals 1

    iget-object v0, p0, Latx;->q:Laqe;

    return-object v0
.end method

.method private b(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Latx;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    :goto_2
    invoke-static {v0}, Lave;->b(Z)V

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Latx;->u:I

    iput-object p2, p0, Latx;->r:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Latx;->a(ILandroid/os/IInterface;)V

    packed-switch p1, :pswitch_data_0

    :goto_3
    monitor-exit v1

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Latx;->f()V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Latx;->a(Landroid/os/IInterface;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Latx;->s()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Latx;)Laqc;
    .locals 1

    iget-object v0, p0, Latx;->x:Laqc;

    return-object v0
.end method

.method static synthetic d(Latx;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Latx;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Latx;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Latx;->v:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Latx;)Laqd;
    .locals 1

    iget-object v0, p0, Latx;->y:Laqd;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Latx;->t:Lauc;

    if-eqz v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Latx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Latx;->l:Laui;

    invoke-virtual {p0}, Latx;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Latx;->t:Lauc;

    invoke-virtual {p0}, Latx;->c_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laui;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    new-instance v0, Lauc;

    iget-object v1, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lauc;-><init>(Latx;I)V

    iput-object v0, p0, Latx;->t:Lauc;

    iget-object v0, p0, Latx;->l:Laui;

    invoke-virtual {p0}, Latx;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Latx;->t:Lauc;

    invoke-virtual {p0}, Latx;->c_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laui;->a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Latx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    iget-object v1, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Latx;->a(II)V

    :cond_1
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Latx;->t:Lauc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latx;->l:Laui;

    invoke-virtual {p0}, Latx;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Latx;->t:Lauc;

    invoke-virtual {p0}, Latx;->c_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laui;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Latx;->t:Lauc;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method protected a(I)V
    .locals 2

    iput p1, p0, Latx;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Latx;->e:J

    return-void
.end method

.method protected a(II)V
    .locals 5

    iget-object v0, p0, Latx;->a:Landroid/os/Handler;

    iget-object v1, p0, Latx;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lauf;

    invoke-direct {v4, p0, p1}, Lauf;-><init>(Latx;I)V

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    iget-object v0, p0, Latx;->a:Landroid/os/Handler;

    iget-object v1, p0, Latx;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Laue;

    invoke-direct {v4, p0, p1, p2, p3}, Laue;-><init>(Latx;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Latx;->f:J

    return-void
.end method

.method public a(Laqe;)V
    .locals 2

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqe;

    iput-object v0, p0, Latx;->q:Laqe;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Latx;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method public a(Lauo;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauo;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Latx;->c()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Latx;->z:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Latx;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_0
    invoke-virtual {p0}, Latx;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Latx;->n()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Lauo;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_1
    :goto_0
    iget-object v1, p0, Latx;->o:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Latx;->p:Lauv;

    if-eqz v2, :cond_3

    iget-object v2, p0, Latx;->p:Lauv;

    new-instance v3, Laub;

    iget-object v4, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Laub;-><init>(Latx;I)V

    invoke-interface {v2, v3, v0}, Lauv;->a(Laus;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Latx;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Latx;->w:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Latx;->b(I)V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "GmsClient"

    const-string v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    iput v0, p0, Latx;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Latx;->h:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Latx;->u:I

    iget-object v2, p0, Latx;->r:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_3

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Latx;->f:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastConnectedTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Latx;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Latx;->f:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Latx;->e:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Latx;->d:I

    packed-switch v1, :pswitch_data_1

    iget v1, p0, Latx;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_2
    const-string v1, " lastSuspendedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Latx;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Latx;->e:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-wide v2, p0, Latx;->h:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastFailedStatus="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Latx;->g:I

    invoke-static {v2}, Lapy;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, " lastFailedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Latx;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Latx;->h:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Latx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_2

    :pswitch_5
    const-string v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Latx;->a:Landroid/os/Handler;

    iget-object v1, p0, Latx;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b_()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Latx;->j:Lats;

    invoke-virtual {v0}, Lats;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Latx;->s:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Latx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Latx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laua;

    invoke-virtual {v0}, Laua;->e()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Latx;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Latx;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Latx;->p:Lauv;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Latx;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public h()Z
    .locals 3

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Latx;->u:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Landroid/os/IBinder;
    .locals 2

    iget-object v1, p0, Latx;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Latx;->p:Lauv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Latx;->p:Lauv;

    invoke-interface {v0}, Lauv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Z
    .locals 3

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Latx;->u:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latx;->i:Landroid/content/Context;

    return-object v0
.end method

.method public final n()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Latx;->w:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latx;->w:Landroid/accounts/Account;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final o()Lats;
    .locals 1

    iget-object v0, p0, Latx;->j:Lats;

    return-object v0
.end method

.method protected final p()V
    .locals 2

    invoke-virtual {p0}, Latx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final q()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Latx;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Latx;->u:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Latx;->p()V

    iget-object v0, p0, Latx;->r:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Latx;->r:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
