.class public Labj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Labj;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuView;Labf;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0, p1}, Labj;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public a(Lzp;)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Labj;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Lzq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Labj;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/support/v7/widget/ActionMenuView;)Lzq;

    move-result-object v0

    invoke-interface {v0, p1}, Lzq;->a(Lzp;)V

    .line 769
    :cond_0
    return-void
.end method

.method public a(Lzp;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Labj;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Labk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labj;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuView;)Labk;

    move-result-object v0

    invoke-interface {v0, p2}, Labk;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
