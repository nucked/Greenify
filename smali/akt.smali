.class Lakt;
.super Lakf;


# instance fields
.field private a:Z

.field private final b:Lakq;

.field private final c:Lajm;

.field private final d:Lajl;

.field private final e:Lakl;

.field private f:J

.field private final g:Lalj;

.field private final h:Lalj;

.field private final i:Lajr;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lakh;Lakj;)V
    .locals 2

    invoke-direct {p0, p1}, Lakf;-><init>(Lakh;)V

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lakt;->f:J

    invoke-virtual {p2, p1}, Lakj;->k(Lakh;)Lajl;

    move-result-object v0

    iput-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {p2, p1}, Lakj;->m(Lakh;)Lakq;

    move-result-object v0

    iput-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {p2, p1}, Lakj;->n(Lakh;)Lajm;

    move-result-object v0

    iput-object v0, p0, Lakt;->c:Lajm;

    invoke-virtual {p2, p1}, Lakj;->o(Lakh;)Lakl;

    move-result-object v0

    iput-object v0, p0, Lakt;->e:Lakl;

    new-instance v0, Lajr;

    invoke-virtual {p0}, Lakt;->n()Lazo;

    move-result-object v1

    invoke-direct {v0, v1}, Lajr;-><init>(Lazo;)V

    iput-object v0, p0, Lakt;->i:Lajr;

    new-instance v0, Laku;

    invoke-direct {v0, p0, p1}, Laku;-><init>(Lakt;Lakh;)V

    iput-object v0, p0, Lakt;->g:Lalj;

    new-instance v0, Lakv;

    invoke-direct {v0, p0, p1}, Lakv;-><init>(Lakt;Lakh;)V

    iput-object v0, p0, Lakt;->h:Lalj;

    return-void
.end method

.method private K()V
    .locals 2

    invoke-virtual {p0}, Lakt;->k()Lakh;

    move-result-object v0

    invoke-virtual {v0}, Lakh;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lakt;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lakt;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lakt;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lakt;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private L()V
    .locals 1

    new-instance v0, Lakx;

    invoke-direct {v0, p0}, Lakx;-><init>(Lakt;)V

    invoke-virtual {p0, v0}, Lakt;->a(Laln;)V

    return-void
.end method

.method private M()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->i()I

    invoke-virtual {p0}, Lakt;->H()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lakt;->h:Lalj;

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lalj;->a(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private N()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lakt;->k:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lakt;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private O()V
    .locals 6

    invoke-virtual {p0}, Lakt;->u()Lalm;

    move-result-object v0

    invoke-virtual {v0}, Lalm;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lalm;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lakt;->G()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lakt;->n()Lazo;

    move-result-object v1

    invoke-interface {v1}, Lazo;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->k()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->j()J

    move-result-wide v2

    const-string v1, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lakt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lalm;->d()V

    goto :goto_0
.end method

.method private P()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lakt;->O()V

    invoke-virtual {p0}, Lakt;->I()J

    move-result-wide v2

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->d()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lakt;->n()Lazo;

    move-result-object v4

    invoke-interface {v4}, Lazo;->a()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    :goto_0
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lakt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lakt;->g:Lalj;

    invoke-virtual {v2}, Lalj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lakt;->g:Lalj;

    invoke-virtual {v4}, Lalj;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lakt;->g:Lalj;

    invoke-virtual {v2, v0, v1}, Lalj;->b(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->h()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lakt;->g:Lalj;

    invoke-virtual {v2, v0, v1}, Lalj;->a(J)V

    goto :goto_1
.end method

.method private Q()V
    .locals 0

    invoke-direct {p0}, Lakt;->R()V

    invoke-direct {p0}, Lakt;->S()V

    return-void
.end method

.method private R()V
    .locals 1

    iget-object v0, p0, Lakt;->g:Lalj;

    invoke-virtual {v0}, Lalj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lakt;->g:Lalj;

    invoke-virtual {v0}, Lalj;->d()V

    return-void
.end method

.method private S()V
    .locals 2

    invoke-virtual {p0}, Lakt;->u()Lalm;

    move-result-object v0

    invoke-virtual {v0}, Lalm;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lalm;->e()V

    :cond_0
    return-void
.end method

.method private a(Lakk;Lbaf;)V
    .locals 8

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lalt;

    invoke-virtual {p0}, Lakt;->k()Lakh;

    move-result-object v1

    invoke-direct {v0, v1}, Lalt;-><init>(Lakh;)V

    invoke-virtual {p1}, Lakk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalt;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lakk;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lalt;->c(Z)V

    invoke-virtual {v0}, Lalt;->l()Lbcc;

    move-result-object v5

    const-class v0, Laxo;

    invoke-virtual {v5, v0}, Lbcc;->b(Ljava/lang/Class;)Lbce;

    move-result-object v0

    check-cast v0, Laxo;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Laxo;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxo;->b(Z)V

    invoke-virtual {v5, p2}, Lbcc;->a(Lbce;)V

    const-class v1, Laxn;

    invoke-virtual {v5, v1}, Lbcc;->b(Ljava/lang/Class;)Lbce;

    move-result-object v1

    check-cast v1, Laxn;

    const-class v2, Lbae;

    invoke-virtual {v5, v2}, Lbcc;->b(Ljava/lang/Class;)Lbce;

    move-result-object v2

    check-cast v2, Lbae;

    invoke-virtual {p1}, Lakk;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Lbae;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lbae;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Lbae;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Lbae;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Laxo;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Laxn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lakk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lbcc;->a(J)V

    invoke-virtual {v5}, Lbcc;->e()V

    return-void
.end method

.method static synthetic a(Lakt;)V
    .locals 0

    invoke-direct {p0}, Lakt;->L()V

    return-void
.end method

.method static synthetic b(Lakt;)V
    .locals 0

    invoke-direct {p0}, Lakt;->M()V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lakt;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public F()V
    .locals 4

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lakt;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lakt;->j:J

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v2

    invoke-virtual {v2}, Lalh;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lakt;->g()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lakt;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v2

    invoke-virtual {v2}, Lajo;->e()V

    invoke-virtual {p0}, Lakt;->H()V

    iget-wide v2, p0, Lakt;->j:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->H()V

    goto :goto_0
.end method

.method public G()J
    .locals 2

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->j()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public H()V
    .locals 1

    invoke-virtual {p0}, Lakt;->k()Lakh;

    move-result-object v0

    invoke-virtual {v0}, Lakh;->s()V

    invoke-virtual {p0}, Lakt;->D()V

    invoke-direct {p0}, Lakt;->N()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->b()V

    invoke-direct {p0}, Lakt;->Q()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->b()V

    invoke-direct {p0}, Lakt;->Q()V

    goto :goto_0

    :cond_1
    sget-object v0, Lalp;->J:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->a()V

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->e()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lakt;->P()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lakt;->Q()V

    invoke-direct {p0}, Lakt;->O()V

    goto :goto_0
.end method

.method public I()J
    .locals 4

    iget-wide v0, p0, Lakt;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lakt;->f:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lakt;->v()Lajw;

    move-result-object v2

    invoke-virtual {v2}, Lajw;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lakt;->v()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->g()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public J()V
    .locals 1

    invoke-virtual {p0}, Lakt;->D()V

    invoke-virtual {p0}, Lakt;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lakt;->k:Z

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->e()V

    invoke-virtual {p0}, Lakt;->H()V

    return-void
.end method

.method public a(Lakk;Z)J
    .locals 5

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lakt;->D()V

    invoke-virtual {p0}, Lakt;->m()V

    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->b()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {p1}, Lakk;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lakk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lakq;->a(JLjava/lang/String;)V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {p1}, Lakk;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lakk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lakk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lakq;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0, v1}, Lakk;->a(J)V

    :goto_0
    iget-object v2, p0, Lakt;->b:Lakq;

    invoke-virtual {v2, p1}, Lakq;->a(Lakk;)V

    iget-object v2, p0, Lakt;->b:Lakq;

    invoke-virtual {v2}, Lakq;->c()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lakt;->b:Lakq;

    invoke-virtual {v2}, Lakq;->d()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :try_start_2
    invoke-virtual {p1, v2, v3}, Lakk;->a(J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v0, -0x1

    :try_start_4
    iget-object v2, p0, Lakt;->b:Lakq;

    invoke-virtual {v2}, Lakq;->d()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "Failed to end transaction"

    invoke-virtual {p0, v3, v2}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lakt;->b:Lakq;

    invoke-virtual {v1}, Lakq;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->E()V

    iget-object v0, p0, Lakt;->c:Lajm;

    invoke-virtual {v0}, Lajm;->E()V

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->E()V

    return-void
.end method

.method public a(Laje;)V
    .locals 3

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    iget-boolean v0, p0, Lakt;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lakt;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lakt;->b(Laje;)Laje;

    move-result-object v1

    invoke-virtual {p0}, Lakt;->g()V

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0, v1}, Lakl;->a(Laje;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lakt;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lakt;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lakt;->p()Lajk;

    move-result-object v0

    const-string v2, "Service unavailable on package side"

    invoke-virtual {v0, v1, v2}, Lajk;->a(Laje;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0, v1}, Lakq;->a(Laje;)V

    invoke-virtual {p0}, Lakt;->H()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v2, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->p()Lajk;

    move-result-object v0

    const-string v2, "deliver: failed to insert hit to database"

    invoke-virtual {v0, v1, v2}, Lajk;->a(Laje;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Lakk;)V
    .locals 4

    invoke-virtual {p0}, Lakt;->m()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lakk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->c()Lajr;

    move-result-object v0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lajr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lakt;->p()Lajk;

    move-result-object v1

    invoke-static {v1, v0}, Lajv;->a(Lajk;Ljava/lang/String;)Lbaf;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lakt;->a(Lakk;Lbaf;)V

    goto :goto_0
.end method

.method public a(Laln;)V
    .locals 2

    iget-wide v0, p0, Lakt;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lakt;->a(Laln;J)V

    return-void
.end method

.method public a(Laln;J)V
    .locals 6

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v2

    invoke-virtual {v2}, Lajo;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lakt;->n()Lazo;

    move-result-object v0

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v2, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lakt;->g()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lakt;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lakt;->r()Lbcg;

    move-result-object v0

    new-instance v1, Laky;

    invoke-direct {v1, p0, p1, p2, p3}, Laky;-><init>(Lakt;Laln;J)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->e()V

    invoke-virtual {p0}, Lakt;->H()V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Laln;->a(Ljava/lang/Throwable;)V

    :cond_4
    iget-wide v0, p0, Lakt;->j:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lakt;->d:Lajl;

    invoke-virtual {v0}, Lajl;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v1

    invoke-virtual {v1}, Lajo;->e()V

    invoke-virtual {p0}, Lakt;->H()V

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Laln;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lave;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lakt;->m()V

    invoke-virtual {p0}, Lakt;->l()V

    invoke-virtual {p0}, Lakt;->p()Lajk;

    move-result-object v0

    invoke-static {v0, p1}, Lajv;->a(Lajk;Ljava/lang/String;)Lbaf;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lakt;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lajo;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->c()Lajr;

    move-result-object v0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v2

    invoke-virtual {v2}, Lalh;->F()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lajr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lakt;->b:Lakq;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lakq;->d(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-direct {p0, v0, v1}, Lakt;->a(Lakk;Lbaf;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lakt;->H()V

    return-void
.end method

.method b(Laje;)Laje;
    .locals 3

    invoke-virtual {p1}, Laje;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->g()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->a()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Laje;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "_m"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Laje;->a(Lake;Laje;Ljava/util/Map;)Laje;

    move-result-object p1

    goto :goto_0
.end method

.method b()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lakt;->D()V

    iget-boolean v0, p0, Lakt;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lave;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lakt;->a:Z

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lakt;->K()V

    :cond_0
    invoke-virtual {p0}, Lakt;->r()Lbcg;

    move-result-object v0

    new-instance v1, Lakw;

    invoke-direct {v1, p0}, Lakw;-><init>(Lakt;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    invoke-virtual {p0}, Lakt;->D()V

    invoke-virtual {p0}, Lakt;->w()Lajo;

    move-result-object v0

    invoke-virtual {v0}, Lajo;->b()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lakt;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lakt;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lakt;->J()V

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lakt;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lakt;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lakt;->J()V

    :cond_1
    invoke-virtual {p0}, Lakt;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lakt;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lakt;->g()V

    :cond_2
    invoke-virtual {p0}, Lakt;->H()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Device AnalyticsService not registered! Hits will not be delivered reliably."

    invoke-virtual {p0, v0}, Lakt;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lakt;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()V
    .locals 2

    invoke-virtual {p0}, Lakt;->m()V

    invoke-virtual {p0}, Lakt;->n()Lazo;

    move-result-object v0

    invoke-interface {v0}, Lazo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lakt;->j:J

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-virtual {p0}, Lakt;->m()V

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lakt;->i()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    const-string v0, "Service disconnected"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected g()V
    .locals 3

    iget-boolean v0, p0, Lakt;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->x()J

    move-result-wide v0

    iget-object v2, p0, Lakt;->i:Lajr;

    invoke-virtual {v2, v0, v1}, Lajr;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakt;->i:Lajr;

    invoke-virtual {v0}, Lajr;->a()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lakt;->i:Lajr;

    invoke-virtual {v0}, Lajr;->b()V

    invoke-virtual {p0}, Lakt;->e()V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Delete all hits from local store"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->e()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->f()V

    invoke-virtual {p0}, Lakt;->H()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lakt;->g()V

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Device service unavailable. Can\'t clear hits stored on the device service."

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete hits from store"

    invoke-virtual {p0, v1, v0}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 6

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    invoke-virtual {p0}, Lakt;->l()V

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lakt;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->l()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lakq;->b(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lakt;->H()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Laje;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lakq;->c(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    iget-object v2, p0, Lakt;->e:Lakl;

    invoke-virtual {v2, v0}, Lakl;->a(Laje;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lakt;->H()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto :goto_0
.end method

.method protected j()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lbcg;->d()V

    invoke-virtual {p0}, Lakt;->D()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lakt;->c:Lajm;

    invoke-virtual {v3}, Lajm;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->l()I

    move-result v0

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->m()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->b()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0, v6, v7}, Lakq;->b(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lakt;->Q()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lakt;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->c()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lakt;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lakt;->e:Lakl;

    invoke-virtual {v0}, Lakl;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lakt;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lakt;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    iget-object v1, p0, Lakt;->e:Lakl;

    invoke-virtual {v1, v0}, Lakl;->a(Laje;)Z

    move-result v1

    if-nez v1, :cond_6

    move-wide v0, v4

    :goto_5
    iget-object v4, p0, Lakt;->c:Lajm;

    invoke-virtual {v4}, Lajm;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lakt;->c:Lajm;

    invoke-virtual {v4, v8}, Lajm;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Laje;->c()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lakt;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Laje;->c()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lakq;->c(J)V

    invoke-virtual {v0}, Laje;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :cond_7
    :try_start_c
    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0, v9}, Lakq;->a(Ljava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_f
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->c()V

    iget-object v0, p0, Lakt;->b:Lakq;

    invoke-virtual {v0}, Lakq;->d()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :cond_9
    :try_start_12
    iget-object v4, p0, Lakt;->b:Lakq;

    invoke-virtual {v4}, Lakq;->c()V

    iget-object v4, p0, Lakt;->b:Lakq;

    invoke-virtual {v4}, Lakq;->d()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lakt;->b:Lakq;

    invoke-virtual {v1}, Lakq;->c()V

    iget-object v1, p0, Lakt;->b:Lakq;

    invoke-virtual {v1}, Lakq;->d()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lakt;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lakt;->Q()V

    goto/16 :goto_2

    :cond_a
    move-wide v0, v4

    goto/16 :goto_5
.end method
