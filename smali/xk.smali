.class Lxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyv;


# instance fields
.field final synthetic a:Lxb;

.field private b:Lyv;


# direct methods
.method public constructor <init>(Lxb;Lyv;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lxk;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    iput-object p2, p0, Lxk;->b:Lyv;

    .line 1692
    return-void
.end method


# virtual methods
.method public a(Lyu;)V
    .locals 3

    .prologue
    .line 1707
    iget-object v0, p0, Lxk;->b:Lyv;

    invoke-interface {v0, p1}, Lyv;->a(Lyu;)V

    .line 1708
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lxk;->a:Lxb;

    iget-object v1, v1, Lxb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1712
    :cond_0
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1713
    iget-object v0, p0, Lxk;->a:Lxb;

    invoke-static {v0}, Lxb;->c(Lxb;)V

    .line 1714
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v1, p0, Lxk;->a:Lxb;

    iget-object v1, v1, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lqj;->a(F)Lqj;

    move-result-object v1

    iput-object v1, v0, Lxb;->q:Lqj;

    .line 1715
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->q:Lqj;

    new-instance v1, Lxl;

    invoke-direct {v1, p0}, Lxl;-><init>(Lxk;)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 1730
    :cond_1
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->e:Lws;

    if-eqz v0, :cond_2

    .line 1731
    iget-object v0, p0, Lxk;->a:Lxb;

    iget-object v0, v0, Lxb;->e:Lws;

    iget-object v1, p0, Lxk;->a:Lxb;

    iget-object v1, v1, Lxb;->m:Lyu;

    invoke-interface {v0, v1}, Lws;->b(Lyu;)V

    .line 1733
    :cond_2
    iget-object v0, p0, Lxk;->a:Lxb;

    const/4 v1, 0x0

    iput-object v1, v0, Lxb;->m:Lyu;

    .line 1734
    return-void
.end method

.method public a(Lyu;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lxk;->b:Lyv;

    invoke-interface {v0, p1, p2}, Lyv;->a(Lyu;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Lyu;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lxk;->b:Lyv;

    invoke-interface {v0, p1, p2}, Lyv;->a(Lyu;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lyu;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lxk;->b:Lyv;

    invoke-interface {v0, p1, p2}, Lyv;->b(Lyu;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
