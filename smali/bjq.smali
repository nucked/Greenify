.class Lbjq;
.super Ljava/lang/Object;

# interfaces
.implements Lbfm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbfm",
        "<",
        "Laxf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjl;


# direct methods
.method private constructor <init>(Lbjl;)V
    .locals 0

    iput-object p1, p0, Lbjq;->a:Lbjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbjl;Lbjm;)V
    .locals 0

    invoke-direct {p0, p1}, Lbjq;-><init>(Lbjl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Laxf;)V
    .locals 5

    iget-object v1, p0, Lbjq;->a:Lbjl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Laxf;->b:Laxb;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-static {v0}, Lbjl;->e(Lbjl;)Laxf;

    move-result-object v0

    iget-object v0, v0, Laxf;->b:Laxb;

    if-nez v0, :cond_0

    const-string v0, "Current resource is null; network resource is also null"

    invoke-static {v0}, Lbfo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbjq;->a:Lbjl;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lbjl;->a(Lbjl;J)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-static {v0}, Lbjl;->e(Lbjl;)Laxf;

    move-result-object v0

    iget-object v0, v0, Laxf;->b:Laxb;

    iput-object v0, p1, Laxf;->b:Laxb;

    :cond_1
    iget-object v0, p0, Lbjq;->a:Lbjl;

    iget-object v2, p0, Lbjq;->a:Lbjl;

    invoke-static {v2}, Lbjl;->c(Lbjl;)Lazo;

    move-result-object v2

    invoke-interface {v2}, Lazo;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lbjl;->a(Lbjl;Laxf;JZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbjq;->a:Lbjl;

    invoke-static {v2}, Lbjl;->f(Lbjl;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-static {v0}, Lbjl;->g(Lbjl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-static {v0, p1}, Lbjl;->a(Lbjl;Laxf;)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lbfn;)V
    .locals 4

    iget-object v1, p0, Lbjq;->a:Lbjl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-virtual {v0}, Lbjl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbjq;->a:Lbjl;

    invoke-static {v0}, Lbjl;->b(Lbjl;)Lbji;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbjq;->a:Lbjl;

    iget-object v2, p0, Lbjq;->a:Lbjl;

    invoke-static {v2}, Lbjl;->b(Lbjl;)Lbji;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjl;->a(Laql;)V

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbjq;->a:Lbjl;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lbjl;->a(Lbjl;J)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbjq;->a:Lbjl;

    iget-object v2, p0, Lbjq;->a:Lbjl;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lbjl;->a(Lcom/google/android/gms/common/api/Status;)Lbdi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbjl;->a(Laql;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Laxf;

    invoke-virtual {p0, p1}, Lbjq;->a(Laxf;)V

    return-void
.end method
