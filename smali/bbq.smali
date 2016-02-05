.class public abstract Lbbq;
.super Lbbw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lbbq",
        "<TM;>;>",
        "Lbbw;"
    }
.end annotation


# instance fields
.field protected r:Lbbs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbbw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbbr;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbbr",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lbbq;->r:Lbbs;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbbq;->r:Lbbs;

    iget v2, p1, Lbbr;->c:I

    invoke-static {v2}, Lbbz;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lbbs;->a(I)Lbbt;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lbbt;->a(Lbbr;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lbbo;)V
    .locals 2

    iget-object v0, p0, Lbbq;->r:Lbbs;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v1}, Lbbs;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v1, v0}, Lbbs;->b(I)Lbbt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbbt;->a(Lbbo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lbbn;I)Z
    .locals 4

    invoke-virtual {p1}, Lbbn;->n()I

    move-result v0

    invoke-virtual {p1, p2}, Lbbn;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lbbz;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lbbn;->n()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lbbn;->a(II)[B

    move-result-object v0

    new-instance v2, Lbby;

    invoke-direct {v2, p2, v0}, Lbby;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lbbq;->r:Lbbs;

    if-nez v3, :cond_2

    new-instance v3, Lbbs;

    invoke-direct {v3}, Lbbs;-><init>()V

    iput-object v3, p0, Lbbq;->r:Lbbs;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lbbt;

    invoke-direct {v0}, Lbbt;-><init>()V

    iget-object v3, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v3, v1, v0}, Lbbs;->a(ILbbt;)V

    :cond_1
    invoke-virtual {v0, v2}, Lbbt;->a(Lbby;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v0, v1}, Lbbs;->a(I)Lbbt;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lbbq;->r:Lbbs;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v2}, Lbbs;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lbbq;->r:Lbbs;

    invoke-virtual {v2, v0}, Lbbs;->b(I)Lbbt;

    move-result-object v2

    invoke-virtual {v2}, Lbbt;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbbq;->d()Lbbq;

    move-result-object v0

    return-object v0
.end method

.method public d()Lbbq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lbbw;->e()Lbbw;

    move-result-object v0

    check-cast v0, Lbbq;

    invoke-static {p0, v0}, Lbbu;->a(Lbbq;Lbbq;)V

    return-object v0
.end method

.method public synthetic e()Lbbw;
    .locals 1

    invoke-virtual {p0}, Lbbq;->d()Lbbq;

    move-result-object v0

    return-object v0
.end method
