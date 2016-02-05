.class public abstract Laft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lafj;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Lafu;


# direct methods
.method private a(II)V
    .locals 4

    .prologue
    .line 8935
    iget-object v0, p0, Laft;->b:Landroid/support/v7/widget/RecyclerView;

    .line 8936
    iget-boolean v1, p0, Laft;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Laft;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 8937
    :cond_0
    invoke-virtual {p0}, Laft;->a()V

    .line 8939
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Laft;->d:Z

    .line 8940
    iget-object v1, p0, Laft;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 8942
    iget-object v1, p0, Laft;->f:Landroid/view/View;

    invoke-virtual {p0, v1}, Laft;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Laft;->a:I

    if-ne v1, v2, :cond_4

    .line 8943
    iget-object v1, p0, Laft;->f:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v3, p0, Laft;->g:Lafu;

    invoke-virtual {p0, v1, v2, v3}, Laft;->a(Landroid/view/View;Lafv;Lafu;)V

    .line 8944
    iget-object v1, p0, Laft;->g:Lafu;

    invoke-static {v1, v0}, Lafu;->a(Lafu;Landroid/support/v7/widget/RecyclerView;)V

    .line 8945
    invoke-virtual {p0}, Laft;->a()V

    .line 8951
    :cond_2
    :goto_0
    iget-boolean v1, p0, Laft;->e:Z

    if-eqz v1, :cond_3

    .line 8952
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v2, p0, Laft;->g:Lafu;

    invoke-virtual {p0, p1, p2, v1, v2}, Laft;->a(IILafv;Lafu;)V

    .line 8953
    iget-object v1, p0, Laft;->g:Lafu;

    invoke-virtual {v1}, Lafu;->a()Z

    move-result v1

    .line 8954
    iget-object v2, p0, Laft;->g:Lafu;

    invoke-static {v2, v0}, Lafu;->a(Lafu;Landroid/support/v7/widget/RecyclerView;)V

    .line 8955
    if-eqz v1, :cond_3

    .line 8957
    iget-boolean v1, p0, Laft;->e:Z

    if-eqz v1, :cond_5

    .line 8958
    const/4 v1, 0x1

    iput-boolean v1, p0, Laft;->d:Z

    .line 8959
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Lafx;

    move-result-object v0

    invoke-virtual {v0}, Lafx;->a()V

    .line 8965
    :cond_3
    :goto_1
    return-void

    .line 8947
    :cond_4
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8948
    const/4 v1, 0x0

    iput-object v1, p0, Laft;->f:Landroid/view/View;

    goto :goto_0

    .line 8961
    :cond_5
    invoke-virtual {p0}, Laft;->a()V

    goto :goto_1
.end method

.method static synthetic a(Laft;II)V
    .locals 0

    .prologue
    .line 8823
    invoke-direct {p0, p1, p2}, Laft;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8971
    iget-object v0, p0, Laft;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 8889
    iget-boolean v0, p0, Laft;->e:Z

    if-nez v0, :cond_0

    .line 8903
    :goto_0
    return-void

    .line 8892
    :cond_0
    invoke-virtual {p0}, Laft;->e()V

    .line 8893
    iget-object v0, p0, Laft;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->d(Lafv;I)I

    .line 8894
    iput-object v1, p0, Laft;->f:Landroid/view/View;

    .line 8895
    iput v2, p0, Laft;->a:I

    .line 8896
    iput-boolean v3, p0, Laft;->d:Z

    .line 8897
    iput-boolean v3, p0, Laft;->e:Z

    .line 8899
    iget-object v0, p0, Laft;->c:Lafj;

    invoke-static {v0, p0}, Lafj;->a(Lafj;Laft;)V

    .line 8901
    iput-object v1, p0, Laft;->c:Lafj;

    .line 8902
    iput-object v1, p0, Laft;->b:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 8870
    iput p1, p0, Laft;->a:I

    .line 8871
    return-void
.end method

.method protected abstract a(IILafv;Lafu;)V
.end method

.method protected abstract a(Landroid/view/View;Lafv;Lafu;)V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 8998
    invoke-virtual {p0, p1}, Laft;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Laft;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8999
    iput-object p1, p0, Laft;->f:Landroid/view/View;

    .line 9004
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 8913
    iget-boolean v0, p0, Laft;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 8921
    iget-boolean v0, p0, Laft;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 8931
    iget v0, p0, Laft;->a:I

    return v0
.end method

.method protected abstract e()V
.end method
