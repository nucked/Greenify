.class public final Larp;
.super Lapz;

# interfaces
.implements Lash;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Laqs",
            "<**>;>;"
        }
    .end annotation
.end field

.field b:Larx;

.field final c:Ljava/util/Map;
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

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lats;

.field final f:Ljava/util/Map;
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

.field final g:Laps;
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

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Larz",
            "<*>;>;"
        }
    .end annotation
.end field

.field i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lasr;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/locks/Lock;

.field private final k:Laug;

.field private l:Lasg;

.field private final m:I

.field private final n:Landroid/content/Context;

.field private final o:Landroid/os/Looper;

.field private volatile p:Z

.field private q:J

.field private r:J

.field private final s:Larv;

.field private final t:Lavu;

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lasi",
            "<*>;>;"
        }
    .end annotation
.end field

.field private v:Lasu;

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laqw;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Integer;

.field private final y:Lary;

.field private final z:Lauh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lats;Lavu;Laps;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lats;",
            "Lavu;",
            "Laps",
            "<+",
            "Lbas;",
            "Lbat;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laqc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laqd;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lapu",
            "<*>;",
            "Lapt;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Laqw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lapz;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Larp;->l:Lasg;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Larp;->a:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Larp;->q:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Larp;->r:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Larp;->d:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Larp;->u:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Larp;->h:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Larp;->x:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Larp;->i:Ljava/util/Set;

    new-instance v2, Larq;

    invoke-direct {v2, p0}, Larq;-><init>(Larp;)V

    iput-object v2, p0, Larp;->y:Lary;

    new-instance v2, Larr;

    invoke-direct {v2, p0}, Larr;-><init>(Larp;)V

    iput-object v2, p0, Larp;->z:Lauh;

    iput-object p1, p0, Larp;->n:Landroid/content/Context;

    iput-object p2, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Laug;

    iget-object v3, p0, Larp;->z:Lauh;

    invoke-direct {v2, p3, v3}, Laug;-><init>(Landroid/os/Looper;Lauh;)V

    iput-object v2, p0, Larp;->k:Laug;

    iput-object p3, p0, Larp;->o:Landroid/os/Looper;

    new-instance v2, Larv;

    invoke-direct {v2, p0, p3}, Larv;-><init>(Larp;Landroid/os/Looper;)V

    iput-object v2, p0, Larp;->s:Larv;

    iput-object p5, p0, Larp;->t:Lavu;

    move/from16 v0, p11

    iput v0, p0, Larp;->m:I

    iget v2, p0, Larp;->m:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Larp;->x:Ljava/lang/Integer;

    :cond_0
    iput-object p7, p0, Larp;->f:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Larp;->c:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Larp;->w:Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqc;

    iget-object v4, p0, Larp;->k:Laug;

    invoke-virtual {v4, v2}, Laug;->a(Laqc;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqd;

    iget-object v4, p0, Larp;->k:Laug;

    invoke-virtual {v4, v2}, Laug;->a(Laqd;)V

    goto :goto_1

    :cond_2
    iput-object p4, p0, Larp;->e:Lats;

    iput-object p6, p0, Larp;->g:Laps;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lapt;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    invoke-interface {v0}, Lapt;->i()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v0}, Lapt;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    :cond_2
    :goto_2
    return v3

    :cond_3
    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Larp;)Lasu;
    .locals 1

    iget-object v0, p0, Larp;->v:Lasu;

    return-object v0
.end method

.method private a(Lapz;Lasn;Z)V
    .locals 2

    sget-object v0, Layy;->c:Laza;

    invoke-interface {v0, p1}, Laza;->a(Lapz;)Laqg;

    move-result-object v0

    new-instance v1, Laru;

    invoke-direct {v1, p0, p2, p3, p1}, Laru;-><init>(Larp;Lasn;ZLapz;)V

    invoke-virtual {v0, v1}, Laqg;->a(Laqm;)V

    return-void
.end method

.method static synthetic a(Larp;Lapz;Lasn;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Larp;->a(Lapz;Lasn;Z)V

    return-void
.end method

.method private static a(Larz;Lasu;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Larz",
            "<*>;",
            "Lasu;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Larz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Larw;

    invoke-direct {v0, p0, p1, p2, v1}, Larw;-><init>(Larz;Lasu;Landroid/os/IBinder;Larq;)V

    invoke-interface {p0, v0}, Larz;->a(Lary;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Larw;

    invoke-direct {v0, p0, p1, p2, v1}, Larw;-><init>(Larz;Lasu;Landroid/os/IBinder;Larq;)V

    invoke-interface {p0, v0}, Larz;->a(Lary;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p0}, Larz;->f()V

    invoke-interface {p0}, Larz;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lasu;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Larz;->a(Lary;)V

    invoke-interface {p0}, Larz;->f()V

    invoke-interface {p0}, Larz;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lasu;->a(I)V

    goto :goto_0
.end method

.method static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Larp;)V
    .locals 0

    invoke-direct {p0}, Larp;->s()V

    return-void
.end method

.method private c(I)V
    .locals 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Larp;->x:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Larp;->x:Ljava/lang/Integer;

    :cond_0
    iget-object v1, p0, Larp;->l:Lasg;

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Larp;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Mode was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Larp;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Larp;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    invoke-interface {v0}, Lapt;->i()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0}, Lapt;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    new-instance v0, Lasb;

    iget-object v1, p0, Larp;->n:Landroid/content/Context;

    iget-object v3, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Larp;->o:Landroid/os/Looper;

    iget-object v5, p0, Larp;->t:Lavu;

    iget-object v6, p0, Larp;->c:Ljava/util/Map;

    iget-object v7, p0, Larp;->e:Lats;

    iget-object v8, p0, Larp;->f:Ljava/util/Map;

    iget-object v9, p0, Larp;->g:Laps;

    iget-object v10, p0, Larp;->w:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lasb;-><init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;Lash;)V

    iput-object v0, p0, Larp;->l:Lasg;

    goto/16 :goto_0

    :pswitch_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v2, :cond_5

    new-instance v0, Laqx;

    iget-object v1, p0, Larp;->n:Landroid/content/Context;

    iget-object v3, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Larp;->o:Landroid/os/Looper;

    iget-object v5, p0, Larp;->t:Lavu;

    iget-object v6, p0, Larp;->c:Ljava/util/Map;

    iget-object v7, p0, Larp;->e:Lats;

    iget-object v8, p0, Larp;->f:Ljava/util/Map;

    iget-object v9, p0, Larp;->g:Laps;

    iget-object v10, p0, Larp;->w:Ljava/util/ArrayList;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Laqx;-><init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;)V

    iput-object v0, p0, Larp;->l:Lasg;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Larp;)V
    .locals 0

    invoke-direct {p0}, Larp;->t()V

    return-void
.end method

.method static synthetic d(Larp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larp;->n:Landroid/content/Context;

    return-object v0
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0}, Laug;->b()V

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->a()V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Larp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Larp;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Larp;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Larp;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a(Lapu;)Lapt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lapt;",
            ">(",
            "Lapu",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Larp;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Laqs;)Laqs;
    .locals 2
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

    invoke-virtual {p1}, Laqs;->a()Lapu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Larp;->c:Ljava/util/Map;

    invoke-virtual {p1}, Laqs;->a()Lapu;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larp;->l:Lasg;

    if-nez v0, :cond_1

    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object p1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0, p1}, Lasg;->a(Laqs;)Laqs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Larp;->c(I)V

    invoke-direct {p0}, Larp;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(IZ)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Larp;->m()V

    :cond_0
    iget-object v0, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larz;

    if-eqz p2, :cond_1

    invoke-interface {v0}, Larz;->b()V

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Larz;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0, p1}, Laug;->a(I)V

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0}, Laug;->a()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Larp;->r()V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqs;

    invoke-virtual {p0, v0}, Larp;->b(Laqs;)Laqs;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0, p1}, Laug;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Laqd;)V
    .locals 1

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0, p1}, Laug;->a(Laqd;)V

    return-void
.end method

.method a(Larz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lapt;",
            ">(",
            "Larz",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Larp;->y:Lary;

    invoke-interface {p1, v0}, Larz;->a(Lary;)V

    return-void
.end method

.method public a(Lasr;)V
    .locals 2

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larp;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larp;->i:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Larp;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Larp;->t:Lavu;

    iget-object v1, p0, Larp;->n:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lavu;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Larp;->n()Z

    :cond_0
    invoke-virtual {p0}, Larp;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0, p1}, Laug;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0}, Laug;->a()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Larp;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Larp;->p:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Larp;->l:Lasg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0, p1, p2, p3, p4}, Lasg;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 4

    iget-object v0, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larz;

    invoke-interface {v0}, Larz;->c()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Larz;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Larz;->f()V

    iget-object v2, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Larz;->b()V

    invoke-interface {v0}, Larz;->a()Lapu;

    move-result-object v2

    invoke-virtual {p0, v2}, Larp;->a(Lapu;)Lapt;

    move-result-object v2

    invoke-interface {v2}, Lapt;->j()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Larp;->v:Lasu;

    invoke-static {v0, v3, v2}, Larp;->a(Larz;Lasu;Landroid/os/IBinder;)V

    iget-object v2, p0, Larp;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lasm;)Z
    .locals 1

    iget-object v0, p0, Larp;->l:Lasg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0, p1}, Lasg;->a(Lasm;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larp;->n:Landroid/content/Context;

    return-object v0
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

    invoke-virtual {p1}, Laqs;->a()Lapu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larp;->l:Lasg;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Larp;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larz;

    invoke-virtual {p0, v0}, Larp;->a(Larz;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Larz;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_3
    :try_start_2
    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0, p1}, Lasg;->b(Laqs;)Laqs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public b(Laqd;)V
    .locals 1

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0, p1}, Laug;->b(Laqd;)V

    return-void
.end method

.method public b(Lasr;)V
    .locals 3

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larp;->i:Ljava/util/Set;

    if-nez v0, :cond_1

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Larp;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Larp;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Larp;->o:Landroid/os/Looper;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Larp;->l:Lasg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->g()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Larp;->m:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Larp;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lave;->a(ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Larp;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Larp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larp;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Larp;->x:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public f()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Larp;->m:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :goto_1
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lave;->a(ZLjava/lang/Object;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Larp;->c(I)V

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0}, Laug;->b()V

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->b()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p0, Larp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Larp;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Larp;->x:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Larp;->l:Lasg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Larp;->a(Z)V

    iget-object v0, p0, Larp;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasi;

    invoke-virtual {v0}, Lasi;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Larp;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larz;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Larz;->a(Lary;)V

    invoke-interface {v0}, Larz;->f()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Larp;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Larp;->l:Lasg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Larp;->n()Z

    iget-object v0, p0, Larp;->k:Laug;

    invoke-virtual {v0}, Laug;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public h()Laqg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laqg",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Larp;->k()Z

    move-result v0

    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Larp;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    new-instance v0, Lasn;

    invoke-direct {v0, p0}, Lasn;-><init>(Lapz;)V

    iget-object v2, p0, Larp;->c:Ljava/util/Map;

    sget-object v3, Layy;->a:Lapu;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p0, v0, v1}, Larp;->a(Lapz;Lasn;Z)V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lars;

    invoke-direct {v2, p0, v1, v0}, Lars;-><init>(Larp;Ljava/util/concurrent/atomic/AtomicReference;Lasn;)V

    new-instance v3, Lart;

    invoke-direct {v3, p0, v0}, Lart;-><init>(Larp;Lasn;)V

    new-instance v4, Laqa;

    iget-object v5, p0, Larp;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Laqa;-><init>(Landroid/content/Context;)V

    sget-object v5, Layy;->b:Lapm;

    invoke-virtual {v4, v5}, Laqa;->a(Lapm;)Laqa;

    move-result-object v4

    invoke-virtual {v4, v2}, Laqa;->a(Laqc;)Laqa;

    move-result-object v2

    invoke-virtual {v2, v3}, Laqa;->a(Laqd;)Laqa;

    move-result-object v2

    iget-object v3, p0, Larp;->s:Larv;

    invoke-virtual {v2, v3}, Laqa;->a(Landroid/os/Handler;)Laqa;

    move-result-object v2

    invoke-virtual {v2}, Laqa;->b()Lapz;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lapz;->e()V

    goto :goto_1
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Larp;->g()V

    invoke-virtual {p0}, Larp;->e()V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Larp;->l:Lasg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larp;->l:Lasg;

    invoke-interface {v0}, Lasg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Z
    .locals 1

    iget-boolean v0, p0, Larp;->p:Z

    return v0
.end method

.method m()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Larp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Larp;->p:Z

    iget-object v0, p0, Larp;->b:Larx;

    if-nez v0, :cond_1

    iget-object v0, p0, Larp;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Larx;

    invoke-direct {v1, p0}, Larx;-><init>(Larp;)V

    iget-object v2, p0, Larp;->t:Lavu;

    invoke-static {v0, v1, v2}, Lasf;->a(Landroid/content/Context;Lasf;Lavu;)Lasf;

    move-result-object v0

    check-cast v0, Larx;

    iput-object v0, p0, Larp;->b:Larx;

    :cond_1
    iget-object v0, p0, Larp;->s:Larv;

    iget-object v1, p0, Larp;->s:Larv;

    invoke-virtual {v1, v3}, Larv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Larp;->q:J

    invoke-virtual {v0, v1, v2, v3}, Larv;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Larp;->s:Larv;

    iget-object v1, p0, Larp;->s:Larv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Larv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Larp;->r:J

    invoke-virtual {v0, v1, v2, v3}, Larv;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method n()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Larp;->l()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Larp;->p:Z

    iget-object v0, p0, Larp;->s:Larv;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Larv;->removeMessages(I)V

    iget-object v0, p0, Larp;->s:Larv;

    invoke-virtual {v0, v1}, Larv;->removeMessages(I)V

    iget-object v0, p0, Larp;->b:Larx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Larp;->b:Larx;

    invoke-virtual {v0}, Larx;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Larp;->b:Larx;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method o()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Larp;->i:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Larp;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Larp;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method p()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Larp;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
