.class public Lalt;
.super Lbcf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbcf",
        "<",
        "Lalt;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lakh;

.field private c:Z


# direct methods
.method public constructor <init>(Lakh;)V
    .locals 2

    invoke-virtual {p1}, Lakh;->h()Lbcg;

    move-result-object v0

    invoke-virtual {p1}, Lakh;->d()Lazo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbcf;-><init>(Lbcg;Lazo;)V

    iput-object p1, p0, Lalt;->b:Lakh;

    return-void
.end method


# virtual methods
.method protected a(Lbcc;)V
    .locals 3

    const-class v0, Laxo;

    invoke-virtual {p1, v0}, Lbcc;->b(Ljava/lang/Class;)Lbce;

    move-result-object v0

    check-cast v0, Laxo;

    invoke-virtual {v0}, Laxo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lalt;->b:Lakh;

    invoke-virtual {v1}, Lakh;->p()Lala;

    move-result-object v1

    invoke-virtual {v1}, Lala;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxo;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lalt;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Laxo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lalt;->b:Lakh;

    invoke-virtual {v1}, Lakh;->o()Lajc;

    move-result-object v1

    invoke-virtual {v1}, Lajc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laxo;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lajc;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Laxo;->a(Z)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lave;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lalt;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lalt;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lalu;

    iget-object v2, p0, Lalt;->b:Lakh;

    invoke-direct {v1, v2, p1}, Lalu;-><init>(Lakh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lalu;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lalt;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcn;

    invoke-interface {v0}, Lbcn;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lalt;->c:Z

    return-void
.end method

.method k()Lakh;
    .locals 1

    iget-object v0, p0, Lalt;->b:Lakh;

    return-object v0
.end method

.method public l()Lbcc;
    .locals 2

    invoke-virtual {p0}, Lalt;->m()Lbcc;

    move-result-object v0

    invoke-virtual {v0}, Lbcc;->a()Lbcc;

    move-result-object v0

    iget-object v1, p0, Lalt;->b:Lakh;

    invoke-virtual {v1}, Lakh;->q()Laks;

    move-result-object v1

    invoke-virtual {v1}, Laks;->c()Lbae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbcc;->a(Lbce;)V

    iget-object v1, p0, Lalt;->b:Lakh;

    invoke-virtual {v1}, Lakh;->r()Lall;

    move-result-object v1

    invoke-virtual {v1}, Lall;->b()Lbag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbcc;->a(Lbce;)V

    invoke-virtual {p0, v0}, Lalt;->b(Lbcc;)V

    return-object v0
.end method
