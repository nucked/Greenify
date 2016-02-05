.class public Lbjl;
.super Laqu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqu",
        "<",
        "Lbdi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lazo;

.field private final b:Lbjr;

.field private final c:Landroid/os/Looper;

.field private final e:Lbgq;

.field private final f:I

.field private final g:Landroid/content/Context;

.field private final h:Lbds;

.field private final i:Ljava/lang/String;

.field private j:Lbjt;

.field private k:Lbaz;

.field private volatile l:Lbji;

.field private volatile m:Z

.field private n:Laxf;

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Lbjs;

.field private r:Lbjo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbds;Landroid/os/Looper;Ljava/lang/String;ILbjt;Lbjs;Lbaz;Lazo;Lbgq;)V
    .locals 2

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Laqu;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbjl;->g:Landroid/content/Context;

    iput-object p2, p0, Lbjl;->h:Lbds;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lbjl;->c:Landroid/os/Looper;

    iput-object p4, p0, Lbjl;->i:Ljava/lang/String;

    iput p5, p0, Lbjl;->f:I

    iput-object p6, p0, Lbjl;->j:Lbjt;

    iput-object p7, p0, Lbjl;->q:Lbjs;

    iput-object p8, p0, Lbjl;->k:Lbaz;

    new-instance v0, Lbjr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbjr;-><init>(Lbjl;Lbjm;)V

    iput-object v0, p0, Lbjl;->b:Lbjr;

    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    iput-object v0, p0, Lbjl;->n:Laxf;

    iput-object p9, p0, Lbjl;->a:Lazo;

    iput-object p10, p0, Lbjl;->e:Lbgq;

    invoke-direct {p0}, Lbjl;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbgn;->a()Lbgn;

    move-result-object v0

    invoke-virtual {v0}, Lbgn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbjl;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lbds;Landroid/os/Looper;Ljava/lang/String;ILbjw;)V
    .locals 14

    new-instance v13, Lbhe;

    move-object/from16 v0, p4

    invoke-direct {v13, p1, v0}, Lbhe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lbgz;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lbgz;-><init>(Landroid/content/Context;Ljava/lang/String;Lbjw;)V

    new-instance v11, Lbaz;

    invoke-direct {v11, p1}, Lbaz;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lazp;->c()Lazo;

    move-result-object v12

    new-instance v2, Lbfl;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lazp;->c()Lazo;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lbfl;-><init>(IJJLjava/lang/String;Lazo;)V

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v13

    move-object v13, v2

    invoke-direct/range {v3 .. v13}, Lbjl;-><init>(Landroid/content/Context;Lbds;Landroid/os/Looper;Ljava/lang/String;ILbjt;Lbjs;Lbaz;Lazo;Lbgq;)V

    iget-object v2, p0, Lbjl;->k:Lbaz;

    invoke-virtual/range {p6 .. p6}, Lbjw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbaz;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbjl;)Lbgq;
    .locals 1

    iget-object v0, p0, Lbjl;->e:Lbgq;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbjl;->q:Lbjs;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbjl;->q:Lbjs;

    iget-object v1, p0, Lbjl;->n:Laxf;

    iget-object v1, v1, Laxf;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lbjs;->a(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Laxf;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbjl;->j:Lbjt;

    if-eqz v0, :cond_0

    new-instance v0, Lbay;

    invoke-direct {v0}, Lbay;-><init>()V

    iget-wide v2, p0, Lbjl;->o:J

    iput-wide v2, v0, Lbay;->a:J

    new-instance v1, Laxb;

    invoke-direct {v1}, Laxb;-><init>()V

    iput-object v1, v0, Lbay;->b:Laxb;

    iput-object p1, v0, Lbay;->c:Laxf;

    iget-object v1, p0, Lbjl;->j:Lbjt;

    invoke-interface {v1, v0}, Lbjt;->a(Lbay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Laxf;JZ)V
    .locals 8

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lbjl;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lbjl;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbjl;->l:Lbji;

    if-nez v0, :cond_2

    :cond_2
    iput-object p1, p0, Lbjl;->n:Laxf;

    iput-wide p2, p0, Lbjl;->o:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lbjl;->o:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lbjl;->a:Lazo;

    invoke-interface {v6}, Lazo;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbjl;->a(J)V

    new-instance v0, Lbdc;

    iget-object v1, p0, Lbjl;->g:Landroid/content/Context;

    iget-object v2, p0, Lbjl;->h:Lbds;

    invoke-virtual {v2}, Lbds;->a()Lbdk;

    move-result-object v2

    iget-object v3, p0, Lbjl;->i:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lbdc;-><init>(Landroid/content/Context;Lbdk;Ljava/lang/String;JLaxf;)V

    iget-object v1, p0, Lbjl;->l:Lbji;

    if-nez v1, :cond_3

    new-instance v1, Lbji;

    iget-object v2, p0, Lbjl;->h:Lbds;

    iget-object v3, p0, Lbjl;->c:Landroid/os/Looper;

    iget-object v4, p0, Lbjl;->b:Lbjr;

    invoke-direct {v1, v2, v3, v0, v4}, Lbji;-><init>(Lbds;Landroid/os/Looper;Lbdc;Lbjj;)V

    iput-object v1, p0, Lbjl;->l:Lbji;

    :goto_1
    invoke-virtual {p0}, Lbjl;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbjl;->r:Lbjo;

    invoke-interface {v1, v0}, Lbjo;->a(Lbdc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjl;->l:Lbji;

    invoke-virtual {p0, v0}, Lbjl;->a(Laql;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lbjl;->l:Lbji;

    invoke-virtual {v1, v0}, Lbji;->a(Lbdc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lbjl;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lbjl;->a(J)V

    return-void
.end method

.method static synthetic a(Lbjl;Laxf;)V
    .locals 0

    invoke-direct {p0, p1}, Lbjl;->a(Laxf;)V

    return-void
.end method

.method static synthetic a(Lbjl;Laxf;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lbjl;->a(Laxf;JZ)V

    return-void
.end method

.method private a(Z)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lbjl;->j:Lbjt;

    new-instance v1, Lbjp;

    invoke-direct {v1, p0, v2}, Lbjp;-><init>(Lbjl;Lbjm;)V

    invoke-interface {v0, v1}, Lbjt;->a(Lbfm;)V

    iget-object v0, p0, Lbjl;->q:Lbjs;

    new-instance v1, Lbjq;

    invoke-direct {v1, p0, v2}, Lbjq;-><init>(Lbjl;Lbjm;)V

    invoke-interface {v0, v1}, Lbjs;->a(Lbfm;)V

    iget-object v0, p0, Lbjl;->j:Lbjt;

    iget v1, p0, Lbjl;->f:I

    invoke-interface {v0, v1}, Lbjt;->a(I)Lbbe;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lbji;

    iget-object v8, p0, Lbjl;->h:Lbds;

    iget-object v9, p0, Lbjl;->c:Landroid/os/Looper;

    new-instance v0, Lbdc;

    iget-object v1, p0, Lbjl;->g:Landroid/content/Context;

    iget-object v2, p0, Lbjl;->h:Lbds;

    invoke-virtual {v2}, Lbds;->a()Lbdk;

    move-result-object v2

    iget-object v3, p0, Lbjl;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lbdc;-><init>(Landroid/content/Context;Lbdk;Ljava/lang/String;JLbbe;)V

    iget-object v1, p0, Lbjl;->b:Lbjr;

    invoke-direct {v7, v8, v9, v0, v1}, Lbji;-><init>(Lbds;Landroid/os/Looper;Lbdc;Lbjj;)V

    iput-object v7, p0, Lbjl;->l:Lbji;

    :cond_0
    new-instance v0, Lbjn;

    invoke-direct {v0, p0, p1}, Lbjn;-><init>(Lbjl;Z)V

    iput-object v0, p0, Lbjl;->r:Lbjo;

    invoke-direct {p0}, Lbjl;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbjl;->q:Lbjs;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lbjs;->a(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbjl;->j:Lbjt;

    invoke-interface {v0}, Lbjt;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lbjl;)Lbji;
    .locals 1

    iget-object v0, p0, Lbjl;->l:Lbji;

    return-object v0
.end method

.method static synthetic c(Lbjl;)Lazo;
    .locals 1

    iget-object v0, p0, Lbjl;->a:Lazo;

    return-object v0
.end method

.method static synthetic d(Lbjl;)Z
    .locals 1

    iget-boolean v0, p0, Lbjl;->m:Z

    return v0
.end method

.method static synthetic e(Lbjl;)Laxf;
    .locals 1

    iget-object v0, p0, Lbjl;->n:Laxf;

    return-object v0
.end method

.method static synthetic f(Lbjl;)J
    .locals 2

    iget-wide v0, p0, Lbjl;->o:J

    return-wide v0
.end method

.method static synthetic g(Lbjl;)Z
    .locals 1

    invoke-direct {p0}, Lbjl;->i()Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 3

    invoke-static {}, Lbgn;->a()Lbgn;

    move-result-object v0

    invoke-virtual {v0}, Lbgn;->b()Lbgo;

    move-result-object v1

    sget-object v2, Lbgo;->b:Lbgo;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lbgn;->b()Lbgo;

    move-result-object v1

    sget-object v2, Lbgo;->c:Lbgo;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lbjl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lbgn;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lbdi;
    .locals 1

    iget-object v0, p0, Lbjl;->l:Lbji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjl;->l:Lbji;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lbji;

    invoke-direct {v0, p1}, Lbji;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbjl;->a(Z)V

    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbjl;->p:Ljava/lang/String;

    iget-object v0, p0, Lbjl;->q:Lbjs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjl;->q:Lbjs;

    invoke-interface {v0, p1}, Lbjs;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Laql;
    .locals 1

    invoke-virtual {p0, p1}, Lbjl;->a(Lcom/google/android/gms/common/api/Status;)Lbdi;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbjl;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
