.class Lxi;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lxi;->a:Lxb;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 778
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lou;->s(Landroid/view/View;)V

    .line 781
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 768
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 769
    iget-object v0, p0, Lxi;->a:Lxb;

    iget-object v0, v0, Lxb;->q:Lqj;

    invoke-virtual {v0, v2}, Lqj;->a(Lra;)Lqj;

    .line 770
    iget-object v0, p0, Lxi;->a:Lxb;

    iput-object v2, v0, Lxb;->q:Lqj;

    .line 771
    return-void
.end method
