.class public Lya;
.super Lyu;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field final synthetic a:Lxw;

.field private final b:Landroid/content/Context;

.field private final c:Lzp;

.field private d:Lyv;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxw;Landroid/content/Context;Lyv;)V
    .locals 2

    .prologue
    .line 939
    iput-object p1, p0, Lya;->a:Lxw;

    invoke-direct {p0}, Lyu;-><init>()V

    .line 940
    iput-object p2, p0, Lya;->b:Landroid/content/Context;

    .line 941
    iput-object p3, p0, Lya;->d:Lyv;

    .line 942
    new-instance v0, Lzp;

    invoke-direct {v0, p2}, Lzp;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzp;->a(I)Lzp;

    move-result-object v0

    iput-object v0, p0, Lya;->c:Lzp;

    .line 944
    iget-object v0, p0, Lya;->c:Lzp;

    invoke-virtual {v0, p0}, Lzp;->a(Lzq;)V

    .line 945
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 949
    new-instance v0, Lzb;

    iget-object v1, p0, Lya;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->i(Lxw;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lya;->b(Ljava/lang/CharSequence;)V

    .line 1033
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1017
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lya;->e:Ljava/lang/ref/WeakReference;

    .line 1018
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1023
    return-void
.end method

.method public a(Lzp;)V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lya;->d:Lyv;

    if-nez v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lya;->d()V

    .line 1098
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1052
    invoke-super {p0, p1}, Lyu;->a(Z)V

    .line 1053
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1054
    return-void
.end method

.method public a(Lzp;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lya;->d:Lyv;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lya;->d:Lyv;

    invoke-interface {v0, p0, p2}, Lyv;->a(Lyu;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lya;->c:Lzp;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->i(Lxw;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lya;->a(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1028
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 959
    iget-object v0, p0, Lya;->a:Lxw;

    iget-object v0, v0, Lxw;->a:Lya;

    if-eq v0, p0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->e(Lxw;)Z

    move-result v0

    iget-object v1, p0, Lya;->a:Lxw;

    invoke-static {v1}, Lxw;->f(Lxw;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Lxw;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    iget-object v0, p0, Lya;->a:Lxw;

    iput-object p0, v0, Lxw;->b:Lyu;

    .line 972
    iget-object v0, p0, Lya;->a:Lxw;

    iget-object v1, p0, Lya;->d:Lyv;

    iput-object v1, v0, Lxw;->c:Lyv;

    .line 976
    :goto_1
    iput-object v3, p0, Lya;->d:Lyv;

    .line 977
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-virtual {v0, v2}, Lxw;->j(Z)V

    .line 980
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 981
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->h(Lxw;)Lade;

    move-result-object v0

    invoke-interface {v0}, Lade;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 983
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->d(Lxw;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lya;->a:Lxw;

    iget-boolean v1, v1, Lxw;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 985
    iget-object v0, p0, Lya;->a:Lxw;

    iput-object v3, v0, Lxw;->a:Lya;

    goto :goto_0

    .line 974
    :cond_1
    iget-object v0, p0, Lya;->d:Lyv;

    invoke-interface {v0, p0}, Lyv;->a(Lyu;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lya;->a:Lxw;

    iget-object v0, v0, Lxw;->a:Lya;

    if-eq v0, p0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lya;->c:Lzp;

    invoke-virtual {v0}, Lzp;->g()V

    .line 999
    :try_start_0
    iget-object v0, p0, Lya;->d:Lyv;

    iget-object v1, p0, Lya;->c:Lzp;

    invoke-interface {v0, p0, v1}, Lyv;->b(Lyu;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    iget-object v0, p0, Lya;->c:Lzp;

    invoke-virtual {v0}, Lzp;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lya;->c:Lzp;

    invoke-virtual {v1}, Lzp;->h()V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lya;->c:Lzp;

    invoke-virtual {v0}, Lzp;->g()V

    .line 1008
    :try_start_0
    iget-object v0, p0, Lya;->d:Lyv;

    iget-object v1, p0, Lya;->c:Lzp;

    invoke-interface {v0, p0, v1}, Lyv;->a(Lyu;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1010
    iget-object v1, p0, Lya;->c:Lzp;

    invoke-virtual {v1}, Lzp;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lya;->c:Lzp;

    invoke-virtual {v1}, Lzp;->h()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lya;->a:Lxw;

    invoke-static {v0}, Lxw;->g(Lxw;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lya;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lya;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
