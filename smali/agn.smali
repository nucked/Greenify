.class public abstract Lagn;
.super Lafd;
.source "SourceFile"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lafd;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagn;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lafy;Z)V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2}, Lagn;->d(Lafy;Z)V

    .line 291
    invoke-virtual {p0, p1}, Lagn;->e(Lafy;)V

    .line 292
    return-void
.end method

.method public abstract a(Lafy;)Z
.end method

.method public abstract a(Lafy;IIII)Z
.end method

.method public a(Lafy;Lafg;Lafg;)Z
    .locals 7

    .prologue
    .line 69
    iget v2, p2, Lafg;->a:I

    .line 70
    iget v3, p2, Lafg;->b:I

    .line 71
    iget-object v0, p1, Lafy;->a:Landroid/view/View;

    .line 72
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 73
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 74
    :goto_1
    invoke-virtual {p1}, Lafy;->q()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Lagn;->a(Lafy;IIII)Z

    move-result v0

    .line 86
    :goto_2
    return v0

    .line 72
    :cond_1
    iget v4, p3, Lafg;->a:I

    goto :goto_0

    .line 73
    :cond_2
    iget v5, p3, Lafg;->b:I

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0, p1}, Lagn;->a(Lafy;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Lafy;Lafy;IIII)Z
.end method

.method public a(Lafy;Lafy;Lafg;Lafg;)Z
    .locals 7

    .prologue
    .line 130
    iget v3, p3, Lafg;->a:I

    .line 131
    iget v4, p3, Lafg;->b:I

    .line 133
    invoke-virtual {p2}, Lafy;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v5, p3, Lafg;->a:I

    .line 135
    iget v6, p3, Lafg;->b:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 140
    invoke-virtual/range {v0 .. v6}, Lagn;->a(Lafy;Lafy;IIII)Z

    move-result v0

    return v0

    .line 137
    :cond_0
    iget v5, p4, Lafg;->a:I

    .line 138
    iget v6, p4, Lafg;->b:I

    goto :goto_0
.end method

.method public final b(Lafy;Z)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2}, Lagn;->c(Lafy;Z)V

    .line 332
    return-void
.end method

.method public abstract b(Lafy;)Z
.end method

.method public b(Lafy;Lafg;Lafg;)Z
    .locals 6

    .prologue
    .line 93
    if-eqz p2, :cond_1

    iget v0, p2, Lafg;->a:I

    iget v1, p3, Lafg;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lafg;->b:I

    iget v1, p3, Lafg;->b:I

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    iget v2, p2, Lafg;->a:I

    iget v3, p2, Lafg;->b:I

    iget v4, p3, Lafg;->a:I

    iget v5, p3, Lafg;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lagn;->a(Lafy;IIII)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lagn;->b(Lafy;)Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lafy;Z)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public c(Lafy;Lafg;Lafg;)Z
    .locals 6

    .prologue
    .line 112
    iget v0, p2, Lafg;->a:I

    iget v1, p3, Lafg;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lafg;->b:I

    iget v1, p3, Lafg;->b:I

    if-eq v0, v1, :cond_1

    .line 117
    :cond_0
    iget v2, p2, Lafg;->a:I

    iget v3, p2, Lafg;->b:I

    iget v4, p3, Lafg;->a:I

    iget v5, p3, Lafg;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lagn;->a(Lafy;IIII)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lagn;->i(Lafy;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lafy;Z)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public g(Lafy;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lagn;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lafy;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Lafy;)V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lagn;->o(Lafy;)V

    .line 252
    invoke-virtual {p0, p1}, Lagn;->e(Lafy;)V

    .line 253
    return-void
.end method

.method public final i(Lafy;)V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lagn;->s(Lafy;)V

    .line 266
    invoke-virtual {p0, p1}, Lagn;->e(Lafy;)V

    .line 267
    return-void
.end method

.method public final j(Lafy;)V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lagn;->q(Lafy;)V

    .line 276
    invoke-virtual {p0, p1}, Lagn;->e(Lafy;)V

    .line 277
    return-void
.end method

.method public final k(Lafy;)V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lagn;->n(Lafy;)V

    .line 301
    return-void
.end method

.method public final l(Lafy;)V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lagn;->r(Lafy;)V

    .line 310
    return-void
.end method

.method public final m(Lafy;)V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lagn;->p(Lafy;)V

    .line 319
    return-void
.end method

.method public n(Lafy;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public o(Lafy;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public p(Lafy;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public q(Lafy;)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public r(Lafy;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public s(Lafy;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method
