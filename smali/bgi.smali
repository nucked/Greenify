.class Lbgi;
.super Ljava/lang/Object;

# interfaces
.implements Lbid;


# instance fields
.field final synthetic a:Lbgh;


# direct methods
.method constructor <init>(Lbgh;)V
    .locals 0

    iput-object p1, p0, Lbgi;->a:Lbgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbes;)V
    .locals 4

    iget-object v0, p0, Lbgi;->a:Lbgh;

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lbgh;->a(Lbgh;J)V

    return-void
.end method

.method public b(Lbes;)V
    .locals 4

    iget-object v0, p0, Lbgi;->a:Lbgh;

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lbgh;->a(Lbgh;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permanent failure dispatching hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lbes;)V
    .locals 6

    invoke-virtual {p1}, Lbes;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lbgi;->a:Lbgh;

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    iget-object v1, p0, Lbgi;->a:Lbgh;

    invoke-static {v1}, Lbgh;->a(Lbgh;)Lazo;

    move-result-object v1

    invoke-interface {v1}, Lazo;->a()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lbgh;->a(Lbgh;JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lbgi;->a:Lbgh;

    invoke-static {v2}, Lbgh;->a(Lbgh;)Lazo;

    move-result-object v2

    invoke-interface {v2}, Lazo;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lbgi;->a:Lbgh;

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lbgh;->a(Lbgh;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on failed hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbes;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
