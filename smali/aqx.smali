.class public Laqx;
.super Ljava/lang/Object;

# interfaces
.implements Lasg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Larp;

.field private final c:Landroid/os/Looper;

.field private final d:Lasb;

.field private final e:Lasb;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapu",
            "<*>;",
            "Lasb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lasm;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lapt;

.field private i:Landroid/os/Bundle;

.field private j:Lcom/google/android/gms/common/ConnectionResult;

.field private k:Lcom/google/android/gms/common/ConnectionResult;

.field private l:Z

.field private final m:Ljava/util/concurrent/locks/Lock;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;)V
    .locals 21
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
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lln;

    invoke-direct {v2}, Lln;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Laqx;->f:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Laqx;->g:Ljava/util/Set;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Laqx;->l:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Laqx;->n:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Laqx;->a:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Laqx;->b:Larp;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Laqx;->c:Landroid/os/Looper;

    const/4 v4, 0x0

    new-instance v15, Lln;

    invoke-direct {v15}, Lln;-><init>()V

    new-instance v8, Lln;

    invoke-direct {v8}, Lln;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapu;

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lapt;

    invoke-interface {v3}, Lapt;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    :cond_0
    invoke-interface {v3}, Lapt;->i()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v4, v0, Laqx;->h:Lapt;

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v17, Lln;

    invoke-direct/range {v17 .. v17}, Lln;-><init>()V

    new-instance v10, Lln;

    invoke-direct {v10}, Lln;-><init>()V

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapm;

    invoke-virtual {v2}, Lapm;->c()Lapu;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Each API in the apiTypeMap must have a corresponding client in the clients map."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqw;

    iget-object v4, v2, Laqw;->a:Lapm;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v4, v2, Laqw;->a:Lapm;

    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Each ClientCallbacks must have a corresponding API in the apiTypeMap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v13, Laqy;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Laqy;-><init>(Laqx;)V

    new-instance v2, Lasb;

    move-object/from16 v0, p0

    iget-object v4, v0, Laqx;->b:Larp;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v13}, Lasb;-><init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;Lash;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Laqx;->d:Lasb;

    new-instance v20, Laqz;

    invoke-direct/range {v20 .. v21}, Laqz;-><init>(Laqx;)V

    new-instance v9, Lasb;

    move-object/from16 v0, p0

    iget-object v11, v0, Laqx;->b:Larp;

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    move-object/from16 v18, p9

    invoke-direct/range {v9 .. v20}, Lasb;-><init>(Landroid/content/Context;Larp;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lavu;Ljava/util/Map;Lats;Ljava/util/Map;Laps;Ljava/util/ArrayList;Lash;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Laqx;->e:Lasb;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapu;

    move-object/from16 v0, p0

    iget-object v4, v0, Laqx;->f:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Laqx;->d:Lasb;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapu;

    move-object/from16 v0, p0

    iget-object v4, v0, Laqx;->f:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Laqx;->e:Lasb;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    return-void
.end method

.method static synthetic a(Laqx;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic a(Laqx;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Laqx;->b:Larp;

    invoke-virtual {v0, p1, p2}, Larp;->a(IZ)V

    iput-object v1, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Laqx;->i:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iput-object p1, p0, Laqx;->i:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Laqx;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Laqx;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laqx;->a(IZ)V

    return-void
.end method

.method static synthetic a(Laqx;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Laqx;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget v0, p0, Laqx;->n:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Laqx;->n:I

    return-void

    :pswitch_0
    iget-object v0, p0, Laqx;->b:Larp;

    invoke-virtual {v0, p1}, Larp;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Laqx;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Laqx;Z)Z
    .locals 0

    iput-boolean p1, p0, Laqx;->l:Z

    return p1
.end method

.method static synthetic b(Laqx;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic b(Laqx;)V
    .locals 0

    invoke-direct {p0}, Laqx;->j()V

    return-void
.end method

.method private static b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Laqs;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqs",
            "<+",
            "Laql;",
            "+",
            "Lapt;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Laqs;->a()Lapu;

    move-result-object v0

    iget-object v1, p0, Laqx;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lave;->b(ZLjava/lang/Object;)V

    iget-object v1, p0, Laqx;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasb;

    iget-object v1, p0, Laqx;->e:Lasb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Laqx;)Z
    .locals 1

    iget-boolean v0, p0, Laqx;->l:Z

    return v0
.end method

.method static synthetic d(Laqx;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic e(Laqx;)Lasb;
    .locals 1

    iget-object v0, p0, Laqx;->e:Lasb;

    return-object v0
.end method

.method static synthetic f(Laqx;)Lasb;
    .locals 1

    iget-object v0, p0, Laqx;->d:Lasb;

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Laqx;->d:Lasb;

    invoke-virtual {v0}, Lasb;->a()V

    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0}, Lasb;->a()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Laqx;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Laqx;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Laqx;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Laqx;->k()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Laqx;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Laqx;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Laqx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Laqx;->d:Lasb;

    invoke-virtual {v0}, Lasb;->c()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Laqx;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0}, Lasb;->c()Z

    iget-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Laqx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Laqx;->e:Lasb;

    iget v1, v1, Lasb;->f:I

    iget-object v2, p0, Laqx;->d:Lasb;

    iget v2, v2, Lasb;->f:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    :cond_6
    invoke-direct {p0, v0}, Laqx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    iget v0, p0, Laqx;->n:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Laqx;->n:I

    return-void

    :pswitch_0
    iget-object v0, p0, Laqx;->b:Larp;

    iget-object v1, p0, Laqx;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Larp;->a(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Laqx;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Laqx;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    invoke-interface {v0}, Lasm;->t()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laqx;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Laqx;->h:Lapt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laqx;->a:Landroid/content/Context;

    iget-object v1, p0, Laqx;->b:Larp;

    invoke-virtual {v1}, Larp;->q()I

    move-result v1

    iget-object v2, p0, Laqx;->h:Lapt;

    invoke-interface {v2}, Lapt;->e()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Laqs;)Laqs;
    .locals 4
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

    invoke-direct {p0, p1}, Laqx;->c(Laqs;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Laqx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Laqx;->n()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Laqs;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0, p1}, Lasb;->a(Laqs;)Laqs;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laqx;->d:Lasb;

    invoke-virtual {v0, p1}, Lasb;->a(Laqs;)Laqs;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Laqx;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laqx;->l:Z

    invoke-direct {p0}, Laqx;->i()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Laqx;->e:Lasb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lasb;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Laqx;->d:Lasb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lasb;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Lasm;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Laqx;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Laqx;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Laqx;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Laqx;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v1, p0, Laqx;->n:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Laqx;->n:I

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Laqx;->e:Lasb;

    invoke-virtual {v1}, Lasb;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Laqs;)Laqs;
    .locals 4
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

    invoke-direct {p0, p1}, Laqx;->c(Laqs;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Laqx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Laqx;->n()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Laqs;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0, p1}, Lasb;->b(Laqs;)Laqs;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laqx;->d:Lasb;

    invoke-virtual {v0, p1}, Lasb;->b(Laqs;)Laqs;

    move-result-object p1

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Laqx;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Laqx;->n:I

    iget-object v1, p0, Laqx;->d:Lasb;

    invoke-virtual {v1}, Lasb;->c()Z

    move-result v1

    iget-object v2, p0, Laqx;->e:Lasb;

    invoke-virtual {v2}, Lasb;->c()Z

    move-result v2

    invoke-direct {p0}, Laqx;->l()V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Laqx;->d:Lasb;

    invoke-virtual {v1}, Lasb;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Laqx;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Laqx;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Laqx;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Laqx;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Laqx;->d:Lasb;

    invoke-virtual {v0}, Lasb;->f()V

    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0}, Lasb;->f()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Laqx;->e()Z

    move-result v0

    iget-object v1, p0, Laqx;->e:Lasb;

    invoke-virtual {v1}, Lasb;->c()Z

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Laqx;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Laqx;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lara;

    invoke-direct {v1, p0}, Lara;-><init>(Laqx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Laqx;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laqx;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Laqx;->e:Lasb;

    invoke-virtual {v0}, Lasb;->d()Z

    move-result v0

    return v0
.end method
