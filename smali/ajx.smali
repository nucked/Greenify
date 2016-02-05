.class public Lajx;
.super Lakf;


# instance fields
.field private final a:Lakt;


# direct methods
.method public constructor <init>(Lakh;Lakj;)V
    .locals 1

    invoke-direct {p0, p1}, Lakf;-><init>(Lakh;)V

    invoke-static {p2}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lakj;->j(Lakh;)Lakt;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:Lakt;

    return-void
.end method

.method static synthetic a(Lajx;)Lakt;
    .locals 1

    iget-object v0, p0, Lajx;->a:Lakt;

    return-object v0
.end method


# virtual methods
.method public a(Lakk;)J
    .locals 4

    invoke-virtual {p0}, Lajx;->D()V

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lajx;->m()V

    iget-object v0, p0, Lajx;->a:Lakt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lakt;->a(Lakk;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lajx;->a:Lakt;

    invoke-virtual {v2, p1}, Lakt;->a(Lakk;)V

    :cond_0
    return-wide v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lajx;->a:Lakt;

    invoke-virtual {v0}, Lakt;->E()V

    return-void
.end method

.method public a(Laje;)V
    .locals 2

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lajx;->D()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lajx;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v0

    new-instance v1, Laka;

    invoke-direct {v1, p0, p1}, Laka;-><init>(Lajx;Laje;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Laln;)V
    .locals 2

    invoke-virtual {p0}, Lajx;->D()V

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v0

    new-instance v1, Lakc;

    invoke-direct {v1, p0, p1}, Lakc;-><init>(Lajx;Laln;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v0

    new-instance v1, Lajz;

    invoke-direct {v1, p0, p1, p2}, Lajz;-><init>(Lajx;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lajx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v0

    new-instance v1, Lajy;

    invoke-direct {v1, p0, p1}, Lajy;-><init>(Lajx;Z)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lajx;->a:Lakt;

    invoke-virtual {v0}, Lakt;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lajx;->D()V

    invoke-virtual {p0}, Lajx;->l()V

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v0

    new-instance v1, Lakb;

    invoke-direct {v1, p0}, Lakb;-><init>(Lajx;)V

    invoke-virtual {v0, v1}, Lbcg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lajx;->D()V

    invoke-virtual {p0}, Lajx;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lajx;->a(Laln;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lajx;->D()V

    invoke-virtual {p0}, Lajx;->r()Lbcg;

    move-result-object v1

    new-instance v2, Lakd;

    invoke-direct {v2, p0}, Lakd;-><init>(Lajx;)V

    invoke-virtual {v1, v2}, Lbcg;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lajx;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lajx;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lajx;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lajx;->D()V

    invoke-static {}, Lbcg;->d()V

    iget-object v0, p0, Lajx;->a:Lakt;

    invoke-virtual {v0}, Lakt;->f()V

    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lajx;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lajx;->d()V

    return-void
.end method

.method h()V
    .locals 1

    invoke-virtual {p0}, Lajx;->m()V

    iget-object v0, p0, Lajx;->a:Lakt;

    invoke-virtual {v0}, Lakt;->e()V

    return-void
.end method

.method i()V
    .locals 1

    invoke-virtual {p0}, Lajx;->m()V

    iget-object v0, p0, Lajx;->a:Lakt;

    invoke-virtual {v0}, Lakt;->d()V

    return-void
.end method
