.class public Lcke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lckr;

.field private final h:Lckr;

.field private i:I

.field private j:Ljava/lang/Process;

.field private k:Ljava/io/DataOutputStream;

.field private l:Lckq;

.field private m:Lckq;

.field private n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:I

.field private volatile s:I

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:I

.field private volatile w:Ljava/lang/String;

.field private volatile x:Ljava/lang/String;

.field private volatile y:Lckd;

.field private volatile z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lckc;Lckm;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object v4, p0, Lcke;->j:Ljava/lang/Process;

    .line 987
    iput-object v4, p0, Lcke;->k:Ljava/io/DataOutputStream;

    .line 988
    iput-object v4, p0, Lcke;->l:Lckq;

    .line 989
    iput-object v4, p0, Lcke;->m:Lckq;

    .line 990
    iput-object v4, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 992
    iput-boolean v5, p0, Lcke;->o:Z

    .line 993
    iput-boolean v0, p0, Lcke;->p:Z

    .line 994
    iput-boolean v0, p0, Lcke;->q:Z

    .line 995
    iput v5, p0, Lcke;->r:I

    .line 998
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcke;->t:Ljava/lang/Object;

    .line 999
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcke;->u:Ljava/lang/Object;

    .line 1001
    iput v5, p0, Lcke;->v:I

    .line 1002
    iput-object v4, p0, Lcke;->w:Ljava/lang/String;

    .line 1003
    iput-object v4, p0, Lcke;->x:Ljava/lang/String;

    .line 1004
    iput-object v4, p0, Lcke;->y:Lckd;

    .line 1005
    iput-object v4, p0, Lcke;->z:Ljava/util/List;

    .line 1014
    invoke-static {p1}, Lckc;->a(Lckc;)Z

    move-result v0

    iput-boolean v0, p0, Lcke;->b:Z

    .line 1015
    invoke-static {p1}, Lckc;->b(Lckc;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcke;->c:Ljava/lang/String;

    .line 1016
    invoke-static {p1}, Lckc;->c(Lckc;)Z

    move-result v0

    iput-boolean v0, p0, Lcke;->d:Z

    .line 1017
    invoke-static {p1}, Lckc;->d(Lckc;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcke;->e:Ljava/util/List;

    .line 1018
    invoke-static {p1}, Lckc;->e(Lckc;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcke;->f:Ljava/util/Map;

    .line 1019
    invoke-static {p1}, Lckc;->f(Lckc;)Lckr;

    move-result-object v0

    iput-object v0, p0, Lcke;->g:Lckr;

    .line 1020
    invoke-static {p1}, Lckc;->g(Lckc;)Lckr;

    move-result-object v0

    iput-object v0, p0, Lcke;->h:Lckr;

    .line 1021
    invoke-static {p1}, Lckc;->h(Lckc;)I

    move-result v0

    iput v0, p0, Lcke;->i:I

    .line 1027
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lckc;->i(Lckc;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcke;->b:Z

    if-eqz v0, :cond_2

    .line 1028
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcke;->a:Landroid/os/Handler;

    .line 1033
    :goto_0
    if-eqz p2, :cond_0

    .line 1036
    const/16 v0, 0x3c

    iput v0, p0, Lcke;->i:I

    .line 1037
    iget-object v0, p0, Lcke;->e:Ljava/util/List;

    new-instance v1, Lckd;

    sget-object v2, Lcka;->a:[Ljava/lang/String;

    new-instance v3, Lckf;

    invoke-direct {v3, p0, p1, p2}, Lckf;-><init>(Lcke;Lckc;Lckm;)V

    invoke-direct {v1, v2, v5, v3, v4}, Lckd;-><init>([Ljava/lang/String;ILckm;Lckl;)V

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcke;->j()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1051
    const/4 v0, -0x3

    invoke-interface {p2, v5, v0, v4}, Lckm;->a(IILjava/util/List;)V

    .line 1054
    :cond_1
    return-void

    .line 1030
    :cond_2
    invoke-static {p1}, Lckc;->i(Lckc;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcke;->a:Landroid/os/Handler;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lckc;Lckm;Lckb;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Lcke;-><init>(Lckc;Lckm;)V

    return-void
.end method

.method static synthetic a(Lcke;I)I
    .locals 0

    .prologue
    .line 975
    iput p1, p0, Lcke;->i:I

    return p1
.end method

.method static synthetic a(Lcke;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcke;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcke;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcke;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lckd;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckd;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1418
    invoke-static {p1}, Lckd;->b(Lckd;)Lckm;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lckd;->d(Lckd;)Lckl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lcke;->a:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 1422
    invoke-static {p1}, Lckd;->b(Lckd;)Lckm;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 1423
    invoke-static {p1}, Lckd;->b(Lckd;)Lckm;

    move-result-object v0

    invoke-static {p1}, Lckd;->e(Lckd;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lckm;->a(IILjava/util/List;)V

    .line 1425
    :cond_2
    invoke-static {p1}, Lckd;->d(Lckd;)Lckl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-static {p1}, Lckd;->d(Lckd;)Lckl;

    move-result-object v0

    invoke-static {p1}, Lckd;->e(Lckd;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lckl;->a(II)V

    goto :goto_0

    .line 1429
    :cond_3
    invoke-direct {p0}, Lcke;->h()V

    .line 1430
    iget-object v0, p0, Lcke;->a:Landroid/os/Handler;

    new-instance v1, Lcki;

    invoke-direct {v1, p0, p1, p3, p2}, Lcki;-><init>(Lcke;Lckd;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcke;Ljava/lang/String;Lckr;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Lcke;->a(Ljava/lang/String;Lckr;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcke;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcke;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    :cond_0
    monitor-exit p0

    return-void

    .line 1399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lckr;)V
    .locals 2

    .prologue
    .line 1371
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1372
    :try_start_0
    iget-object v0, p0, Lcke;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1376
    invoke-direct {p0}, Lcke;->h()V

    .line 1377
    iget-object v0, p0, Lcke;->a:Landroid/os/Handler;

    new-instance v1, Lckh;

    invoke-direct {v1, p0, p2, p1}, Lckh;-><init>(Lcke;Lckr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1388
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lckr;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1295
    invoke-virtual {p0}, Lcke;->b()Z

    move-result v0

    .line 1296
    if-nez v0, :cond_0

    .line 1297
    iput-boolean v2, p0, Lcke;->p:Z

    .line 1299
    :cond_0
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcke;->p:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcke;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1300
    iget-object v0, p0, Lcke;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckd;

    .line 1301
    iget-object v2, p0, Lcke;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1303
    iput-object v3, p0, Lcke;->z:Ljava/util/List;

    .line 1304
    iput v1, p0, Lcke;->v:I

    .line 1305
    iput-object v3, p0, Lcke;->w:Ljava/lang/String;

    .line 1306
    iput-object v3, p0, Lcke;->x:Ljava/lang/String;

    .line 1308
    invoke-static {v0}, Lckd;->a(Lckd;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1310
    :try_start_0
    invoke-static {v0}, Lckd;->b(Lckd;)Lckm;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcke;->z:Ljava/util/List;

    .line 1318
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcke;->p:Z

    .line 1319
    iput-object v0, p0, Lcke;->y:Lckd;

    .line 1320
    invoke-direct {p0}, Lcke;->e()V

    .line 1321
    invoke-static {v0}, Lckd;->a(Lckd;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 1322
    const-string v5, "[%s+] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcke;->c:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcjy;->b(Ljava/lang/String;)V

    .line 1324
    iget-object v5, p0, Lcke;->k:Ljava/io/DataOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    iget-object v1, p0, Lcke;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " $?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 1327
    iget-object v1, p0, Lcke;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >&2\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1328
    iget-object v0, p0, Lcke;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcke;->p:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1343
    iget-object v1, p0, Lcke;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 1344
    :try_start_1
    iget-object v0, p0, Lcke;->t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1345
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    :cond_4
    return-void

    .line 1333
    :cond_5
    invoke-direct {p0, v1}, Lcke;->a(Z)V

    goto :goto_1

    .line 1335
    :cond_6
    if-nez v0, :cond_3

    .line 1337
    :goto_2
    iget-object v0, p0, Lcke;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1338
    iget-object v0, p0, Lcke;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckd;

    const/4 v2, -0x2

    invoke-direct {p0, v0, v2, v3}, Lcke;->a(Lckd;ILjava/util/List;)V

    goto :goto_2

    .line 1345
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1329
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcke;I)I
    .locals 0

    .prologue
    .line 975
    iput p1, p0, Lcke;->v:I

    return p1
.end method

.method static synthetic b(Lcke;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Lcke;->d()V

    return-void
.end method

.method static synthetic b(Lcke;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcke;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcke;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcke;->x:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcke;->a(Z)V

    .line 1222
    return-void
.end method

.method static synthetic c(Lcke;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Lcke;->i()V

    return-void
.end method

.method static synthetic d(Lcke;)Lckd;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcke;->y:Lckd;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 6

    .prologue
    .line 1231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1233
    :cond_1
    :try_start_1
    iget v0, p0, Lcke;->i:I

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcke;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1237
    const/4 v0, -0x2

    .line 1238
    const-string v1, "[%s%%] SHELL_DIED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcke;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcjy;->a(Ljava/lang/String;)V

    .line 1246
    :goto_1
    iget-object v1, p0, Lcke;->a:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1247
    iget-object v1, p0, Lcke;->y:Lckd;

    iget-object v2, p0, Lcke;->z:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Lcke;->a(Lckd;ILjava/util/List;)V

    .line 1251
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->y:Lckd;

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->z:Ljava/util/List;

    .line 1253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcke;->p:Z

    .line 1255
    iget-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1256
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1257
    invoke-virtual {p0}, Lcke;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1239
    :cond_3
    :try_start_2
    iget v0, p0, Lcke;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcke;->s:I

    iget v1, p0, Lcke;->i:I

    if-lt v0, v1, :cond_0

    .line 1242
    const/4 v0, -0x1

    .line 1243
    const-string v1, "[%s%%] WATCHDOG_EXIT"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcke;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcjy;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private e()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 1264
    iget v0, p0, Lcke;->i:I

    if-nez v0, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1267
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcke;->s:I

    .line 1268
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1269
    iget-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lckg;

    invoke-direct {v1, p0}, Lckg;-><init>(Lcke;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method static synthetic e(Lcke;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Lcke;->g()V

    return-void
.end method

.method static synthetic f(Lcke;)Lckr;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcke;->g:Lckr;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1285
    :cond_0
    return-void
.end method

.method private declared-synchronized g()V
    .locals 3

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcke;->y:Lckd;

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcke;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcke;->y:Lckd;

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcke;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcke;->y:Lckd;

    iget v1, p0, Lcke;->v:I

    iget-object v2, p0, Lcke;->z:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcke;->a(Lckd;ILjava/util/List;)V

    .line 1356
    invoke-direct {p0}, Lcke;->f()V

    .line 1357
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->y:Lckd;

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Lcke;->z:Ljava/util/List;

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcke;->p:Z

    .line 1360
    invoke-direct {p0}, Lcke;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    :cond_0
    monitor-exit p0

    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcke;)Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcke;->d:Z

    return v0
.end method

.method static synthetic h(Lcke;)Lckr;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcke;->h:Lckr;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1408
    iget-object v1, p0, Lcke;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    :try_start_0
    iget v0, p0, Lcke;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcke;->r:I

    .line 1410
    monitor-exit v1

    .line 1411
    return-void

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1452
    iget-object v1, p0, Lcke;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1453
    :try_start_0
    iget v0, p0, Lcke;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcke;->r:I

    .line 1454
    iget v0, p0, Lcke;->r:I

    if-nez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcke;->u:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1457
    :cond_0
    monitor-exit v1

    .line 1458
    return-void

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized j()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1467
    monitor-enter p0

    :try_start_0
    const-string v0, "[%s%%] START"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcke;->c:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcjy;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :try_start_1
    iget-object v0, p0, Lcke;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcke;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcke;->j:Ljava/lang/Process;

    .line 1487
    :goto_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcke;->j:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcke;->k:Ljava/io/DataOutputStream;

    .line 1488
    new-instance v0, Lckq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcke;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcke;->j:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lckj;

    invoke-direct {v5, p0}, Lckj;-><init>(Lcke;)V

    invoke-direct {v0, v1, v4, v5}, Lckq;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lckr;)V

    iput-object v0, p0, Lcke;->l:Lckq;

    .line 1514
    new-instance v0, Lckq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcke;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcke;->j:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lckk;

    invoke-direct {v5, p0}, Lckk;-><init>(Lcke;)V

    invoke-direct {v0, v1, v4, v5}, Lckq;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lckr;)V

    iput-object v0, p0, Lcke;->m:Lckq;

    .line 1535
    iget-object v0, p0, Lcke;->l:Lckq;

    invoke-virtual {v0}, Lckq;->start()V

    .line 1536
    iget-object v0, p0, Lcke;->m:Lckq;

    invoke-virtual {v0}, Lckq;->start()V

    .line 1538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcke;->o:Z

    .line 1539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcke;->q:Z

    .line 1541
    invoke-direct {p0}, Lcke;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 1546
    :goto_1
    monitor-exit p0

    return v0

    .line 1475
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1476
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1477
    iget-object v1, p0, Lcke;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1479
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1480
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 1482
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 1483
    goto :goto_2

    .line 1484
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcke;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcke;->j:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1544
    :catch_0
    move-exception v0

    move v0, v3

    .line 1546
    goto :goto_1

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 1624
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcke;->o:Z

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcke;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    :try_start_1
    iget-object v0, p0, Lcke;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcke;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1637
    :goto_1
    monitor-exit p0

    return-void

    .line 1624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1634
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1629
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a([Ljava/lang/String;ILckl;)V
    .locals 3

    .prologue
    .line 1212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcke;->e:Ljava/util/List;

    new-instance v1, Lckd;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, p3}, Lckd;-><init>([Ljava/lang/String;ILckm;Lckl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    invoke-direct {p0}, Lcke;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    monitor-exit p0

    return-void

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1645
    iget-object v1, p0, Lcke;->j:Ljava/lang/Process;

    if-nez v1, :cond_0

    .line 1654
    :goto_0
    return v0

    .line 1649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcke;->j:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1651
    :catch_0
    move-exception v0

    .line 1654
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcke;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcjy;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    const-string v0, "Application did not close() interactive shell"

    invoke-static {v0}, Lcjy;->a(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Lcko;

    invoke-direct {v0}, Lcko;-><init>()V

    throw v0

    .line 1063
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1064
    return-void
.end method
