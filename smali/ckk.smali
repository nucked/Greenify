.class Lckk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckr;


# instance fields
.field final synthetic a:Lcke;


# direct methods
.method constructor <init>(Lcke;)V
    .locals 0

    .prologue
    .line 1515
    iput-object p1, p0, Lckk;->a:Lcke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1518
    iget-object v1, p0, Lckk;->a:Lcke;

    monitor-enter v1

    .line 1519
    :try_start_0
    iget-object v0, p0, Lckk;->a:Lcke;

    invoke-static {v0}, Lcke;->d(Lcke;)Lckd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1520
    monitor-exit v1

    .line 1531
    :goto_0
    return-void

    .line 1522
    :cond_0
    iget-object v0, p0, Lckk;->a:Lcke;

    invoke-static {v0}, Lcke;->d(Lcke;)Lckd;

    move-result-object v0

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Lckk;->a:Lcke;

    iget-object v2, p0, Lckk;->a:Lcke;

    invoke-static {v2}, Lcke;->d(Lcke;)Lckd;

    move-result-object v2

    invoke-static {v2}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcke;->c(Lcke;Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    iget-object v0, p0, Lckk;->a:Lcke;

    invoke-static {v0}, Lcke;->e(Lcke;)V

    .line 1530
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1526
    :cond_1
    :try_start_1
    iget-object v0, p0, Lckk;->a:Lcke;

    invoke-static {v0}, Lcke;->g(Lcke;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1527
    iget-object v0, p0, Lckk;->a:Lcke;

    invoke-static {v0, p1}, Lcke;->b(Lcke;Ljava/lang/String;)V

    .line 1528
    :cond_2
    iget-object v0, p0, Lckk;->a:Lcke;

    iget-object v2, p0, Lckk;->a:Lcke;

    invoke-static {v2}, Lcke;->h(Lcke;)Lckr;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcke;->a(Lcke;Ljava/lang/String;Lckr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
