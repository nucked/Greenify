.class Lxx;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxw;


# direct methods
.method constructor <init>(Lxw;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lxx;->a:Lxw;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->a(Lxw;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->b(Lxw;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->b(Lxw;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lou;->b(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->c(Lxw;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Lou;->b(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->c(Lxw;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->c(Lxw;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object v0, p0, Lxx;->a:Lxw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxw;->a(Lxw;Lze;)Lze;

    .line 145
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-virtual {v0}, Lxw;->e()V

    .line 146
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->d(Lxw;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lxx;->a:Lxw;

    invoke-static {v0}, Lxw;->d(Lxw;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Lou;->s(Landroid/view/View;)V

    .line 149
    :cond_1
    return-void
.end method
