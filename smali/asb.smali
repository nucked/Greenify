.class public Lasb;
.super Ljava/lang/Object;

# interfaces
.implements Lasg;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapu",
            "<*>;",
            "Lapt;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapu",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lats;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final e:Laps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laps",
            "<+",
            "Lbas;",
            "Lbat;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field final g:Larp;

.field final h:Lash;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private final j:Ljava/util/concurrent/locks/Condition;

.field private final k:Landroid/content/Context;

.field private final l:Lavu;

.field private final m:Lasd;

.field private volatile n:Lasa;

.field private o:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;Lash;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Larp;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lavu;",
            "Ljava/util/Map",
            "<",
            "Lapu",
            "<*>;",
            "Lapt;",
            ">;",
            "Lats;",
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Laps",
            "<+",
            "Lbas;",
            "Lbat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Laqw;",
            ">;",
            "Lash;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasb;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lasb;->o:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lasb;->k:Landroid/content/Context;

    iput-object p3, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lasb;->l:Lavu;

    iput-object p6, p0, Lasb;->a:Ljava/util/Map;

    iput-object p7, p0, Lasb;->c:Lats;

    iput-object p8, p0, Lasb;->d:Ljava/util/Map;

    iput-object p9, p0, Lasb;->e:Laps;

    iput-object p2, p0, Lasb;->g:Larp;

    iput-object p11, p0, Lasb;->h:Lash;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    invoke-virtual {v0, p0}, Laqw;->a(Lasb;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lasd;

    invoke-direct {v0, p0, p4}, Lasd;-><init>(Lasb;Landroid/os/Looper;)V

    iput-object v0, p0, Lasb;->m:Lasd;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lasb;->j:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Laro;

    invoke-direct {v0, p0}, Laro;-><init>(Lasb;)V

    iput-object v0, p0, Lasb;->n:Lasa;

    return-void
.end method

.method static synthetic a(Lasb;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lasb;)Lasa;
    .locals 1

    iget-object v0, p0, Lasb;->n:Lasa;

    return-object v0
.end method


# virtual methods
.method public a(Laqs;)Laqs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            "R::",
            "Laql;",
            "T:",
            "Laqs",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0, p1}, Lasa;->a(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0}, Lasa;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0, p1}, Lasa;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0, p1}, Lasa;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Lasc;)V
    .locals 2

    iget-object v0, p0, Lasb;->m:Lasd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lasd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lasb;->m:Lasd;

    invoke-virtual {v1, v0}, Lasd;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lasb;->o:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Laro;

    invoke-direct {v0, p0}, Laro;-><init>(Lasb;)V

    iput-object v0, p0, Lasb;->n:Lasa;

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0}, Lasa;->a()V

    iget-object v0, p0, Lasb;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lapm",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0, p1, p2, p3}, Lasa;->a(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lasb;->m:Lasd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lasd;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lasb;->m:Lasd;

    invoke-virtual {v1, v0}, Lasd;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lasb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lapm;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lasb;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lapm;->c()Lapu;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    invoke-interface {v0, v1, p2, p3, p4}, Lapt;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lasm;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Laqs;)Laqs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            "T:",
            "Laqs",
            "<+",
            "Laql;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0, p1}, Lasa;->b(Laqs;)Laqs;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lasb;->a()V

    :goto_0
    invoke-virtual {p0}, Lasb;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lasb;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lasb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lasb;->o:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasb;->o:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0}, Lasa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lasb;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lasb;->n:Lasa;

    instance-of v0, v0, Larb;

    return v0
.end method

.method e()V
    .locals 8

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lare;

    iget-object v2, p0, Lasb;->c:Lats;

    iget-object v3, p0, Lasb;->d:Ljava/util/Map;

    iget-object v4, p0, Lasb;->l:Lavu;

    iget-object v5, p0, Lasb;->e:Laps;

    iget-object v6, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lasb;->k:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lare;-><init>(Lasb;Lats;Ljava/util/Map;Lavu;Laps;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lasb;->n:Lasa;

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0}, Lasa;->a()V

    iget-object v0, p0, Lasb;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lasb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasb;->n:Lasa;

    check-cast v0, Larb;

    invoke-virtual {v0}, Larb;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lasb;->g:Larp;

    invoke-virtual {v0}, Larp;->n()Z

    new-instance v0, Larb;

    invoke-direct {v0, p0}, Larb;-><init>(Lasb;)V

    iput-object v0, p0, Lasb;->n:Lasa;

    iget-object v0, p0, Lasb;->n:Lasa;

    invoke-interface {v0}, Lasa;->a()V

    iget-object v0, p0, Lasb;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lasb;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Lasb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    invoke-interface {v0}, Lapt;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lasb;->n:Lasa;

    instance-of v0, v0, Lare;

    return v0
.end method
