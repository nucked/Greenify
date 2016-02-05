.class Lckj;
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
    .line 1489
    iput-object p1, p0, Lckj;->a:Lcke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1492
    iget-object v1, p0, Lckj;->a:Lcke;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v0, p0, Lckj;->a:Lcke;

    invoke-static {v0}, Lcke;->d(Lcke;)Lckd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1494
    monitor-exit v1

    .line 1512
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lckj;->a:Lcke;

    invoke-static {v0}, Lcke;->d(Lcke;)Lckd;

    move-result-object v0

    invoke-static {v0}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    :try_start_1
    iget-object v0, p0, Lckj;->a:Lcke;

    iget-object v2, p0, Lckj;->a:Lcke;

    invoke-static {v2}, Lcke;->d(Lcke;)Lckd;

    move-result-object v2

    invoke-static {v2}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcke;->b(Lcke;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1504
    :goto_1
    :try_start_2
    iget-object v0, p0, Lckj;->a:Lcke;

    iget-object v2, p0, Lckj;->a:Lcke;

    invoke-static {v2}, Lcke;->d(Lcke;)Lckd;

    move-result-object v2

    invoke-static {v2}, Lckd;->c(Lckd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcke;->a(Lcke;Ljava/lang/String;)Ljava/lang/String;

    .line 1505
    iget-object v0, p0, Lckj;->a:Lcke;

    invoke-static {v0}, Lcke;->e(Lcke;)V

    .line 1511
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1500
    :catch_0
    move-exception v0

    .line 1502
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1507
    :cond_1
    iget-object v0, p0, Lckj;->a:Lcke;

    invoke-static {v0, p1}, Lcke;->b(Lcke;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lckj;->a:Lcke;

    iget-object v2, p0, Lckj;->a:Lcke;

    invoke-static {v2}, Lcke;->f(Lcke;)Lckr;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcke;->a(Lcke;Ljava/lang/String;Lckr;)V

    .line 1509
    iget-object v0, p0, Lckj;->a:Lcke;

    iget-object v2, p0, Lckj;->a:Lcke;

    invoke-static {v2}, Lcke;->d(Lcke;)Lckd;

    move-result-object v2

    invoke-static {v2}, Lckd;->d(Lckd;)Lckl;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcke;->a(Lcke;Ljava/lang/String;Lckr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
