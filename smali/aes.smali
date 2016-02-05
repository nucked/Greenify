.class final Laes;
.super Laeq;
.source "SourceFile"


# direct methods
.method constructor <init>(Lafj;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laeq;-><init>(Lafj;Laer;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 318
    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1, p1}, Lafj;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lafk;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0, p1}, Lafj;->h(I)V

    .line 284
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 311
    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1, p1}, Lafj;->j(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lafk;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0}, Lafj;->s()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 295
    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1, p1}, Lafj;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lafk;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Lafk;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0}, Lafj;->q()I

    move-result v0

    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1}, Lafj;->u()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 303
    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1, p1}, Lafj;->e(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lafk;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Lafk;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0}, Lafj;->q()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0}, Lafj;->q()I

    move-result v0

    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1}, Lafj;->s()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Laes;->a:Lafj;

    invoke-virtual {v1}, Lafj;->u()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Laes;->a:Lafj;

    invoke-virtual {v0}, Lafj;->u()I

    move-result v0

    return v0
.end method
