.class public Lakh;
.super Ljava/lang/Object;


# static fields
.field private static a:Lakh;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lazo;

.field private final e:Lalh;

.field private final f:Lajk;

.field private final g:Lbcg;

.field private final h:Lajx;

.field private final i:Lalm;

.field private final j:Lajw;

.field private final k:Lajo;

.field private final l:Lail;

.field private final m:Lala;

.field private final n:Lajc;

.field private final o:Laks;

.field private final p:Lall;


# direct methods
.method protected constructor <init>(Lakj;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lakj;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Application;

    const-string v2, "getApplicationContext didn\'t return the application"

    invoke-static {v1, v2}, Lave;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lakj;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lakh;->b:Landroid/content/Context;

    iput-object v1, p0, Lakh;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lakj;->h(Lakh;)Lazo;

    move-result-object v1

    iput-object v1, p0, Lakh;->d:Lazo;

    invoke-virtual {p1, p0}, Lakj;->g(Lakh;)Lalh;

    move-result-object v1

    iput-object v1, p0, Lakh;->e:Lalh;

    invoke-virtual {p1, p0}, Lakj;->f(Lakh;)Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->E()V

    iput-object v1, p0, Lakh;->f:Lajk;

    invoke-virtual {p0}, Lakh;->e()Lalh;

    move-result-object v1

    invoke-virtual {v1}, Lalh;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lakh;->f()Lajk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Analytics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lajk;->d(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p0}, Lakj;->q(Lakh;)Lajo;

    move-result-object v1

    invoke-virtual {v1}, Lajo;->E()V

    iput-object v1, p0, Lakh;->k:Lajo;

    invoke-virtual {p1, p0}, Lakj;->e(Lakh;)Lajw;

    move-result-object v1

    invoke-virtual {v1}, Lajw;->E()V

    iput-object v1, p0, Lakh;->j:Lajw;

    invoke-virtual {p1, p0}, Lakj;->l(Lakh;)Lajx;

    move-result-object v1

    invoke-virtual {p1, p0}, Lakj;->d(Lakh;)Lala;

    move-result-object v2

    invoke-virtual {p1, p0}, Lakj;->c(Lakh;)Lajc;

    move-result-object v3

    invoke-virtual {p1, p0}, Lakj;->b(Lakh;)Laks;

    move-result-object v4

    invoke-virtual {p1, p0}, Lakj;->a(Lakh;)Lall;

    move-result-object v5

    invoke-virtual {p1, v0}, Lakj;->a(Landroid/content/Context;)Lbcg;

    move-result-object v0

    invoke-virtual {p0}, Lakh;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Lbcg;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lakh;->g:Lbcg;

    invoke-virtual {p1, p0}, Lakj;->i(Lakh;)Lail;

    move-result-object v0

    invoke-virtual {v2}, Lala;->E()V

    iput-object v2, p0, Lakh;->m:Lala;

    invoke-virtual {v3}, Lajc;->E()V

    iput-object v3, p0, Lakh;->n:Lajc;

    invoke-virtual {v4}, Laks;->E()V

    iput-object v4, p0, Lakh;->o:Laks;

    invoke-virtual {v5}, Lall;->E()V

    iput-object v5, p0, Lakh;->p:Lall;

    invoke-virtual {p1, p0}, Lakj;->p(Lakh;)Lalm;

    move-result-object v2

    invoke-virtual {v2}, Lalm;->E()V

    iput-object v2, p0, Lakh;->i:Lalm;

    invoke-virtual {v1}, Lajx;->E()V

    iput-object v1, p0, Lakh;->h:Lajx;

    invoke-virtual {p0}, Lakh;->e()Lalh;

    move-result-object v2

    invoke-virtual {v2}, Lalh;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lakh;->f()Lajk;

    move-result-object v2

    const-string v3, "Device AnalyticsService version"

    sget-object v4, Lakg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lajk;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lail;->a()V

    iput-object v0, p0, Lakh;->l:Lail;

    invoke-virtual {v1}, Lajx;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lakh;->f()Lajk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Analytics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "To enable debug logging on a device run:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb shell setprop log.tag.GAv4 DEBUG\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lajk;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lakh;
    .locals 8

    invoke-static {p0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lakh;->a:Lakh;

    if-nez v0, :cond_1

    const-class v1, Lakh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lakh;->a:Lakh;

    if-nez v0, :cond_0

    invoke-static {}, Lazp;->c()Lazo;

    move-result-object v0

    invoke-interface {v0}, Lazo;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lakj;

    invoke-direct {v5, v4}, Lakj;-><init>(Landroid/content/Context;)V

    new-instance v4, Lakh;

    invoke-direct {v4, v5}, Lakh;-><init>(Lakj;)V

    sput-object v4, Lakh;->a:Lakh;

    invoke-static {}, Lail;->d()V

    invoke-interface {v0}, Lazo;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lalp;->Q:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lakh;->f()Lajk;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lajk;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lakh;->a:Lakh;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lakf;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p1, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lakf;->C()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Laki;

    invoke-direct {v0, p0}, Laki;-><init>(Lakh;)V

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lakh;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lakh;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lazo;
    .locals 1

    iget-object v0, p0, Lakh;->d:Lazo;

    return-object v0
.end method

.method public e()Lalh;
    .locals 1

    iget-object v0, p0, Lakh;->e:Lalh;

    return-object v0
.end method

.method public f()Lajk;
    .locals 1

    iget-object v0, p0, Lakh;->f:Lajk;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->f:Lajk;

    return-object v0
.end method

.method public g()Lajk;
    .locals 1

    iget-object v0, p0, Lakh;->f:Lajk;

    return-object v0
.end method

.method public h()Lbcg;
    .locals 1

    iget-object v0, p0, Lakh;->g:Lbcg;

    invoke-static {v0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakh;->g:Lbcg;

    return-object v0
.end method

.method public i()Lajx;
    .locals 1

    iget-object v0, p0, Lakh;->h:Lajx;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->h:Lajx;

    return-object v0
.end method

.method public j()Lalm;
    .locals 1

    iget-object v0, p0, Lakh;->i:Lalm;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->i:Lalm;

    return-object v0
.end method

.method public k()Lail;
    .locals 2

    iget-object v0, p0, Lakh;->l:Lail;

    invoke-static {v0}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakh;->l:Lail;

    invoke-virtual {v0}, Lail;->c()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lave;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lakh;->l:Lail;

    return-object v0
.end method

.method public l()Lajw;
    .locals 1

    iget-object v0, p0, Lakh;->j:Lajw;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->j:Lajw;

    return-object v0
.end method

.method public m()Lajo;
    .locals 1

    iget-object v0, p0, Lakh;->k:Lajo;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->k:Lajo;

    return-object v0
.end method

.method public n()Lajo;
    .locals 1

    iget-object v0, p0, Lakh;->k:Lajo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lakh;->k:Lajo;

    invoke-virtual {v0}, Lajo;->C()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lakh;->k:Lajo;

    goto :goto_0
.end method

.method public o()Lajc;
    .locals 1

    iget-object v0, p0, Lakh;->n:Lajc;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->n:Lajc;

    return-object v0
.end method

.method public p()Lala;
    .locals 1

    iget-object v0, p0, Lakh;->m:Lala;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->m:Lala;

    return-object v0
.end method

.method public q()Laks;
    .locals 1

    iget-object v0, p0, Lakh;->o:Laks;

    invoke-direct {p0, v0}, Lakh;->a(Lakf;)V

    iget-object v0, p0, Lakh;->o:Laks;

    return-object v0
.end method

.method public r()Lall;
    .locals 1

    iget-object v0, p0, Lakh;->p:Lall;

    return-object v0
.end method

.method public s()V
    .locals 0

    invoke-static {}, Lbcg;->d()V

    return-void
.end method
