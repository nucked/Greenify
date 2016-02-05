.class public Lake;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lakh;


# direct methods
.method protected constructor <init>(Lakh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lake;->a:Lakh;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    const-string v0, "true"

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lake;->a:Lakh;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->g()Lajk;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lajk;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, p3, p4, p5}, Lake;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p1}, Lake;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lake;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lake;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected A()Lall;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->r()Lall;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 2

    sget-object v0, Lalp;->c:Lalq;

    invoke-virtual {v0}, Lalq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lake;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public k()Lakh;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    return-object v0
.end method

.method protected l()V
    .locals 2

    invoke-virtual {p0}, Lake;->q()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call only supported on the client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected m()V
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->s()V

    return-void
.end method

.method protected n()Lazo;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->d()Lazo;

    move-result-object v0

    return-object v0
.end method

.method protected o()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected p()Lajk;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->f()Lajk;

    move-result-object v0

    return-object v0
.end method

.method protected q()Lalh;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->e()Lalh;

    move-result-object v0

    return-object v0
.end method

.method protected r()Lbcg;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->h()Lbcg;

    move-result-object v0

    return-object v0
.end method

.method public s()Lail;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->k()Lail;

    move-result-object v0

    return-object v0
.end method

.method protected t()Lajx;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->i()Lajx;

    move-result-object v0

    return-object v0
.end method

.method protected u()Lalm;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->j()Lalm;

    move-result-object v0

    return-object v0
.end method

.method protected v()Lajw;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->l()Lajw;

    move-result-object v0

    return-object v0
.end method

.method protected w()Lajo;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->m()Lajo;

    move-result-object v0

    return-object v0
.end method

.method protected x()Lala;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->p()Lala;

    move-result-object v0

    return-object v0
.end method

.method protected y()Lajc;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->o()Lajc;

    move-result-object v0

    return-object v0
.end method

.method protected z()Laks;
    .locals 1

    iget-object v0, p0, Lake;->a:Lakh;

    invoke-virtual {v0}, Lakh;->q()Laks;

    move-result-object v0

    return-object v0
.end method
