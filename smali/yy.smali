.class public Lyy;
.super Lyu;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/widget/ActionBarContextView;

.field private c:Lyv;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Lzp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lyv;Z)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lyu;-><init>()V

    .line 47
    iput-object p1, p0, Lyy;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    .line 49
    iput-object p3, p0, Lyy;->c:Lyv;

    .line 51
    new-instance v0, Lzp;

    invoke-virtual {p2}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzp;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzp;->a(I)Lzp;

    move-result-object v0

    iput-object v0, p0, Lyy;->g:Lzp;

    .line 53
    iget-object v0, p0, Lyy;->g:Lzp;

    invoke-virtual {v0, p0}, Lzp;->a(Lzq;)V

    .line 54
    iput-boolean p4, p0, Lyy;->f:Z

    .line 55
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lyy;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyy;->b(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 91
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lyy;->d:Ljava/lang/ref/WeakReference;

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public a(Lzp;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lyy;->d()V

    .line 156
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->a()Z

    .line 157
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lyu;->a(Z)V

    .line 80
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 81
    return-void
.end method

.method public a(Lzp;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lyy;->c:Lyv;

    invoke-interface {v0, p0, p2}, Lyv;->a(Lyu;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lyy;->g:Lzp;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lyy;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyy;->a(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lyy;->e:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyy;->e:Z

    .line 106
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 107
    iget-object v0, p0, Lyy;->c:Lyv;

    invoke-interface {v0, p0}, Lyv;->a(Lyu;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lyy;->c:Lyv;

    iget-object v1, p0, Lyy;->g:Lzp;

    invoke-interface {v0, p0, v1}, Lyv;->b(Lyu;Landroid/view/Menu;)Z

    .line 97
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lyy;->b:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lyy;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyy;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
