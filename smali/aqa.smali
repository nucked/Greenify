.class public final Laqa;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Latt;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lapm",
            "<*>;",
            "Lapn;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lel;

.field private l:I

.field private m:Laqd;

.field private n:Landroid/os/Looper;

.field private o:Lavu;

.field private p:Laps;
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

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laqc;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laqd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laqa;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laqa;->c:Ljava/util/Set;

    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    iput-object v0, p0, Laqa;->h:Ljava/util/Map;

    new-instance v0, Lln;

    invoke-direct {v0}, Lln;-><init>()V

    iput-object v0, p0, Laqa;->j:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Laqa;->l:I

    invoke-static {}, Lavu;->b()Lavu;

    move-result-object v0

    iput-object v0, p0, Laqa;->o:Lavu;

    sget-object v0, Lban;->c:Laps;

    iput-object v0, p0, Laqa;->p:Laps;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqa;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqa;->r:Ljava/util/ArrayList;

    iput-object p1, p0, Laqa;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Laqa;->n:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqa;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqa;->g:Ljava/lang/String;

    return-void
.end method

.method private static a(Laps;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lats;Laqc;Laqd;)Lapt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lapt;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Laps",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lats;",
            "Laqc;",
            "Laqd;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Laps;->a(Landroid/content/Context;Landroid/os/Looper;Lats;Ljava/lang/Object;Laqc;Laqd;)Lapt;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lapw;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lats;Laqc;Laqd;)Latb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lapv;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lapw",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lats;",
            "Laqc;",
            "Laqd;",
            ")",
            "Latb;"
        }
    .end annotation

    new-instance v0, Latb;

    invoke-interface {p0}, Lapw;->b()I

    move-result v3

    invoke-interface {p0, p1}, Lapw;->a(Ljava/lang/Object;)Lapv;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Latb;-><init>(Landroid/content/Context;Landroid/os/Looper;ILaqc;Laqd;Lats;Lapv;)V

    return-object v0
.end method

.method static synthetic a(Laqa;)Lel;
    .locals 1

    iget-object v0, p0, Laqa;->k:Lel;

    return-object v0
.end method

.method private a(Lapz;)V
    .locals 2

    iget-object v0, p0, Laqa;->k:Lel;

    invoke-static {v0}, Laso;->a(Lel;)Laso;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Laqa;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laqb;

    invoke-direct {v1, p0, p1}, Laqb;-><init>(Laqa;Lapz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Laqa;->a(Laso;Lapz;)V

    goto :goto_0
.end method

.method static synthetic a(Laqa;Laso;Lapz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laqa;->a(Laso;Lapz;)V

    return-void
.end method

.method private a(Laso;Lapz;)V
    .locals 2

    iget v0, p0, Laqa;->l:I

    iget-object v1, p0, Laqa;->m:Laqd;

    invoke-virtual {p1, v0, p2, v1}, Laso;->a(ILapz;Laqd;)V

    return-void
.end method

.method private c()Lapz;
    .locals 15

    invoke-virtual {p0}, Laqa;->a()Lats;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lats;->f()Ljava/util/Map;

    move-result-object v12

    new-instance v7, Lln;

    invoke-direct {v7}, Lln;-><init>()V

    new-instance v10, Lln;

    invoke-direct {v10}, Lln;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laqa;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v2, v0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lapm;

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latt;

    iget-boolean v0, v0, Latt;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Laqw;

    invoke-direct {v5, v8, v0}, Laqw;-><init>(Lapm;I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lapm;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lapm;->b()Lapw;

    move-result-object v0

    invoke-interface {v0}, Lapw;->a()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    move-object v11, v8

    :goto_2
    iget-object v2, p0, Laqa;->i:Landroid/content/Context;

    iget-object v3, p0, Laqa;->n:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Laqa;->a(Lapw;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lats;Laqc;Laqd;)Latb;

    move-result-object v0

    move-object v1, v0

    move-object v0, v11

    :goto_3
    invoke-virtual {v8}, Lapm;->c()Lapu;

    move-result-object v2

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lapt;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v9, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lapm;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lapm;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lapm;->a()Laps;

    move-result-object v0

    invoke-virtual {v0}, Laps;->a()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    move-object v11, v8

    :goto_4
    iget-object v2, p0, Laqa;->i:Landroid/content/Context;

    iget-object v3, p0, Laqa;->n:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Laqa;->a(Laps;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lats;Laqc;Laqd;)Lapt;

    move-result-object v0

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :cond_3
    move-object v8, v9

    :cond_4
    move-object v2, v0

    move-object v9, v8

    goto/16 :goto_0

    :cond_5
    if-eqz v9, :cond_7

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lapm;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lapm;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Laqa;->a:Landroid/accounts/Account;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lapm;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lave;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Laqa;->b:Ljava/util/Set;

    iget-object v1, p0, Laqa;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lapm;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lave;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Larp;->a(Ljava/lang/Iterable;Z)I

    move-result v12

    new-instance v0, Larp;

    iget-object v1, p0, Laqa;->i:Landroid/content/Context;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v3, p0, Laqa;->n:Landroid/os/Looper;

    iget-object v5, p0, Laqa;->o:Lavu;

    iget-object v6, p0, Laqa;->p:Laps;

    iget-object v8, p0, Laqa;->q:Ljava/util/ArrayList;

    iget-object v9, p0, Laqa;->r:Ljava/util/ArrayList;

    iget v11, p0, Laqa;->l:I

    invoke-direct/range {v0 .. v13}, Larp;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lats;Lavu;Laps;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    move-object v11, v2

    goto/16 :goto_4

    :cond_a
    move-object v11, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Landroid/os/Handler;)Laqa;
    .locals 1

    const-string v0, "Handler must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Laqa;->n:Landroid/os/Looper;

    return-object p0
.end method

.method public a(Lapm;)Laqa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapm",
            "<+",
            "Lapq;",
            ">;)",
            "Laqa;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lapm;->a()Laps;

    move-result-object v0

    invoke-virtual {v0, v1}, Laps;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laqa;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Laqa;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lapm;Lapo;)Laqa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lapo;",
            ">(",
            "Lapm",
            "<TO;>;TO;)",
            "Laqa;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lapm;->a()Laps;

    move-result-object v0

    invoke-virtual {v0, p2}, Laps;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laqa;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Laqa;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Laqc;)Laqa;
    .locals 1

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laqa;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Laqd;)Laqa;
    .locals 1

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laqa;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lats;
    .locals 9

    sget-object v8, Lbat;->a:Lbat;

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    sget-object v1, Lban;->g:Lapm;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    sget-object v1, Lban;->g:Lapm;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbat;

    move-object v8, v0

    :cond_0
    new-instance v0, Lats;

    iget-object v1, p0, Laqa;->a:Landroid/accounts/Account;

    iget-object v2, p0, Laqa;->b:Ljava/util/Set;

    iget-object v3, p0, Laqa;->h:Ljava/util/Map;

    iget v4, p0, Laqa;->d:I

    iget-object v5, p0, Laqa;->e:Landroid/view/View;

    iget-object v6, p0, Laqa;->f:Ljava/lang/String;

    iget-object v7, p0, Laqa;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lats;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lbat;)V

    return-object v0
.end method

.method public b()Lapz;
    .locals 3

    iget-object v0, p0, Laqa;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    invoke-direct {p0}, Laqa;->c()Lapz;

    move-result-object v0

    invoke-static {}, Lapz;->i()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lapz;->i()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Laqa;->l:I

    if-ltz v1, :cond_0

    invoke-direct {p0, v0}, Laqa;->a(Lapz;)V

    :cond_0
    return-object v0

    :cond_1
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
