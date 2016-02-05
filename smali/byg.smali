.class Lbyg;
.super Lbyi;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbxt;


# direct methods
.method constructor <init>(Lbxt;ZZZ)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lbyg;->b:Lbxt;

    iput-boolean p4, p0, Lbyg;->a:Z

    invoke-direct {p0, p1, p2, p3}, Lbyi;-><init>(Lbxt;ZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 501
    const/4 v1, 0x0

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 503
    iget-object v0, p0, Lbyg;->b:Lbxt;

    invoke-virtual {v0}, Lbxt;->h()Lel;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Lel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 504
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 505
    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 506
    iget-object v6, p0, Lbyg;->b:Lbxt;

    invoke-static {v6}, Lbxt;->f(Lbxt;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 507
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    iget-boolean v6, p0, Lbyg;->a:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_1

    .line 509
    new-array v0, v12, [Ljava/lang/String;

    aput-object v5, v0, v11

    invoke-virtual {p0, v0}, Lbyg;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-boolean v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-nez v6, :cond_0

    iget-boolean v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 512
    iget-wide v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 513
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 515
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    :cond_2
    new-instance v8, Lbyj;

    sget-object v9, Lbyk;->a:Lbyk;

    invoke-direct {v8, v9}, Lbyj;-><init>(Lbyk;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1, v6, v7}, Lbvp;->a(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lbyj;->a(Ljava/lang/String;)Lbyj;

    move-result-object v6

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v0}, Lbyj;->a(I)Lbyj;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-array v0, v12, [Ljava/lang/String;

    aput-object v5, v0, v11

    invoke-virtual {p0, v0}, Lbyg;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_3
    return-void
.end method
