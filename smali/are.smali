.class public Lare;
.super Ljava/lang/Object;

# interfaces
.implements Lasa;


# instance fields
.field private final a:Lasb;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private final d:Lavu;

.field private e:Lcom/google/android/gms/common/ConnectionResult;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/os/Bundle;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lapu;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lbas;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lauo;

.field private p:Z

.field private q:Z

.field private final r:Lats;

.field private final s:Ljava/util/Map;
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

.field private final t:Laps;
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

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lasb;Lats;Ljava/util/Map;Lavu;Laps;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasb;",
            "Lats;",
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lavu;",
            "Laps",
            "<+",
            "Lbas;",
            "Lbat;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lare;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lare;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lare;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lare;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lare;->a:Lasb;

    iput-object p2, p0, Lare;->r:Lats;

    iput-object p3, p0, Lare;->s:Ljava/util/Map;

    iput-object p4, p0, Lare;->d:Lavu;

    iput-object p5, p0, Lare;->t:Laps;

    iput-object p6, p0, Lare;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lare;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lare;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lare;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lare;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Lare;Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lare;->b(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V

    return-void
.end method

.method static synthetic a(Lare;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lare;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lare;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->b()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GoogleApiClientConnecting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lare;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lauo;

    move-result-object v1

    iput-object v1, p0, Lare;->o:Lauo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v1

    iput-boolean v1, p0, Lare;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v0

    iput-boolean v0, p0, Lare;->q:Z

    invoke-direct {p0}, Lare;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lare;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lare;->h()V

    invoke-direct {p0}, Lare;->e()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lare;->k:Lbas;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lare;->k:Lbas;

    invoke-interface {v0}, Lbas;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lare;->k:Lbas;

    invoke-interface {v0}, Lbas;->f()V

    :cond_0
    iget-object v0, p0, Lare;->k:Lbas;

    invoke-interface {v0}, Lbas;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lare;->o:Lauo;

    :cond_1
    return-void
.end method

.method private a(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p3}, Lare;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lare;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_2

    iget v2, p0, Lare;->f:I

    if-ge p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lare;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lare;->b(I)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lare;->d:Lavu;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lavu;->b(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lare;)Lavu;
    .locals 1

    iget-object v0, p0, Lare;->d:Lavu;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lapm",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-virtual {p2}, Lapm;->a()Laps;

    move-result-object v0

    invoke-virtual {v0}, Laps;->a()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lare;->a(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lare;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lare;->f:I

    :cond_0
    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lapm;->c()Lapu;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)Z
    .locals 3

    iget v0, p0, Lare;->g:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lare;->a:Lasb;

    iget-object v1, v1, Lasb;->g:Larp;

    invoke-virtual {v1}, Larp;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lare;->g:I

    invoke-direct {p0, v2}, Lare;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lare;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lare;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lare;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lare;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lare;->l:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lare;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lare;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Lare;->i()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lare;->a(Z)V

    iget-object v0, p0, Lare;->a:Lasb;

    invoke-virtual {v0, p1}, Lasb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->h:Lash;

    invoke-interface {v0, p1}, Lash;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lare;)Lasb;
    .locals 1

    iget-object v0, p0, Lare;->a:Lasb;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lare;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lare;->h:I

    iget v1, p0, Lare;->h:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lare;->h:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lare;->a:Lasb;

    iget-object v2, v2, Lasb;->g:Larp;

    invoke-virtual {v2}, Larp;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lare;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lare;->a:Lasb;

    iget v2, p0, Lare;->f:I

    iput v2, v1, Lasb;->f:I

    iget-object v1, p0, Lare;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget v0, p0, Lare;->h:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lare;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lare;->n:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lare;->f()V

    goto :goto_0
.end method

.method static synthetic e(Lare;)Z
    .locals 1

    iget-boolean v0, p0, Lare;->m:Z

    return v0
.end method

.method static synthetic f(Lare;)Lbas;
    .locals 1

    iget-object v0, p0, Lare;->k:Lbas;

    return-object v0
.end method

.method private f()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lare;->g:I

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lare;->h:I

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapu;

    iget-object v3, p0, Lare;->a:Lasb;

    iget-object v3, v3, Lasb;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lare;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lare;->g()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lare;->a:Lasb;

    iget-object v3, v3, Lasb;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lare;->u:Ljava/util/ArrayList;

    invoke-static {}, Lase;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Larj;

    invoke-direct {v3, p0, v1}, Larj;-><init>(Lare;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static synthetic g(Lare;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lare;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lare;->a:Lasb;

    invoke-virtual {v0}, Lasb;->h()V

    invoke-static {}, Lase;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Larf;

    invoke-direct {v1, p0}, Larf;-><init>(Lare;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lare;->k:Lbas;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lare;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lare;->k:Lbas;

    iget-object v1, p0, Lare;->o:Lauo;

    iget-boolean v2, p0, Lare;->q:Z

    invoke-interface {v0, v1, v2}, Lbas;->a(Lauo;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lare;->a(Z)V

    :cond_1
    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapu;

    iget-object v2, p0, Lare;->a:Lasb;

    iget-object v2, v2, Lasb;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    invoke-interface {v0}, Lapt;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lare;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lare;->a:Lasb;

    iget-object v1, v1, Lasb;->h:Lash;

    invoke-interface {v1, v0}, Lash;->a(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v0, p0, Lare;->i:Landroid/os/Bundle;

    goto :goto_1
.end method

.method static synthetic h(Lare;)Lauo;
    .locals 1

    iget-object v0, p0, Lare;->o:Lauo;

    return-object v0
.end method

.method private h()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lare;->m:Z

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Larp;->d:Ljava/util/Set;

    iget-object v0, p0, Lare;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapu;

    iget-object v2, p0, Lare;->a:Lasb;

    iget-object v2, v2, Lasb;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lare;->a:Lasb;

    iget-object v2, v2, Lasb;->b:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lare;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lare;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic i(Lare;)V
    .locals 0

    invoke-direct {p0}, Lare;->h()V

    return-void
.end method

.method private j()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lare;->r:Lats;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lare;->r:Lats;

    invoke-virtual {v0}, Lats;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lare;->r:Lats;

    invoke-virtual {v0}, Lats;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    iget-object v4, p0, Lare;->a:Lasb;

    iget-object v4, v4, Lasb;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lapm;->c()Lapu;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latt;

    iget-object v0, v0, Latt;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lare;)V
    .locals 0

    invoke-direct {p0}, Lare;->e()V

    return-void
.end method

.method static synthetic k(Lare;)Z
    .locals 1

    invoke-direct {p0}, Lare;->d()Z

    move-result v0

    return v0
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

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->g:Larp;

    iget-object v0, v0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lare;->m:Z

    iput-object v10, p0, Lare;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lare;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lare;->l:I

    iput-boolean v4, p0, Lare;->n:Z

    iput-boolean v4, p0, Lare;->p:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lare;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapm;

    iget-object v1, p0, Lare;->a:Lasb;

    iget-object v1, v1, Lasb;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lapm;->c()Lapu;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapt;

    iget-object v2, p0, Lare;->s:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lapm;->a()Laps;

    move-result-object v2

    invoke-virtual {v2}, Laps;->a()I

    move-result v2

    if-ne v2, v5, :cond_2

    move v2, v5

    :goto_1
    or-int/2addr v2, v3

    invoke-interface {v1}, Lapt;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lare;->m:Z

    iget v3, p0, Lare;->l:I

    if-ge v8, v3, :cond_0

    iput v8, p0, Lare;->l:I

    :cond_0
    if-eqz v8, :cond_1

    iget-object v3, p0, Lare;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lapm;->c()Lapu;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Larg;

    invoke-direct {v3, p0, v0, v8}, Larg;-><init>(Lare;Lapm;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lare;->m:Z

    :cond_4
    iget-boolean v0, p0, Lare;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lare;->r:Lats;

    iget-object v1, p0, Lare;->a:Lasb;

    iget-object v1, v1, Lasb;->g:Larp;

    invoke-virtual {v1}, Larp;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lats;->a(Ljava/lang/Integer;)V

    new-instance v5, Larm;

    invoke-direct {v5, p0, v10}, Larm;-><init>(Lare;Larf;)V

    iget-object v0, p0, Lare;->t:Laps;

    iget-object v1, p0, Lare;->c:Landroid/content/Context;

    iget-object v2, p0, Lare;->a:Lasb;

    iget-object v2, v2, Lasb;->g:Larp;

    invoke-virtual {v2}, Larp;->c()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lare;->r:Lats;

    iget-object v4, p0, Lare;->r:Lats;

    invoke-virtual {v4}, Lats;->i()Lbat;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Laps;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;

    move-result-object v0

    check-cast v0, Lbas;

    iput-object v0, p0, Lare;->k:Lbas;

    :cond_5
    iget-object v0, p0, Lare;->a:Lasb;

    iget-object v0, v0, Lasb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lare;->h:I

    iget-object v0, p0, Lare;->u:Ljava/util/ArrayList;

    invoke-static {}, Lase;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Larh;

    invoke-direct {v2, p0, v7}, Larh;-><init>(Lare;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lare;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lare;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lare;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lare;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lare;->g()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lapm",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lare;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lare;->b(Lcom/google/android/gms/common/ConnectionResult;Lapm;I)V

    invoke-direct {p0}, Lare;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lare;->g()V

    goto :goto_0
.end method

.method public b(Laqs;)Laqs;
    .locals 2
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lare;->i()V

    invoke-direct {p0, v2}, Lare;->a(Z)V

    iget-object v0, p0, Lare;->a:Lasb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lasb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public c()V
    .locals 0

    return-void
.end method
