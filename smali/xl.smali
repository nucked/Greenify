.class Lxl;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxk;


# direct methods
.method constructor <init>(Lxk;)V
    .locals 0

    .prologue
    .line 1715
    iput-object p1, p0, Lxl;->a:Lxk;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1718
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1719
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1724
    :cond_0
    :goto_0
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1725
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->q:Lqj;

    invoke-virtual {v0, v2}, Lqj;->a(Lra;)Lqj;

    .line 1726
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iput-object v2, v0, Lxb;->q:Lqj;

    .line 1727
    return-void

    .line 1721
    :cond_1
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lxl;->a:Lxk;

    iget-object v0, v0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lou;->s(Landroid/view/View;)V

    goto :goto_0
.end method
