.class Laga;
.super Lmg;
.source "SourceFile"


# instance fields
.field final synthetic b:Lafz;


# direct methods
.method constructor <init>(Lafz;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Laga;->b:Lafz;

    invoke-direct {p0}, Lmg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lrl;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lmg;->a(Landroid/view/View;Lrl;)V

    .line 83
    iget-object v0, p0, Laga;->b:Lafz;

    invoke-static {v0}, Lafz;->a(Lafz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laga;->b:Lafz;

    iget-object v0, v0, Lafz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Lafj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Laga;->b:Lafz;

    iget-object v0, v0, Lafz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Lafj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lafj;->a(Landroid/view/View;Lrl;)V

    .line 87
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lmg;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Laga;->b:Lafz;

    invoke-static {v0}, Lafz;->a(Lafz;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laga;->b:Lafz;

    iget-object v0, v0, Lafz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Lafj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Laga;->b:Lafz;

    iget-object v0, v0, Lafz;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Lafj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lafj;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
