.class final Lxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field final synthetic a:Lxs;


# direct methods
.method private constructor <init>(Lxs;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lxv;->a:Lxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxs;Lxt;)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lxv;-><init>(Lxs;)V

    return-void
.end method


# virtual methods
.method public a(Lzp;)V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 634
    iget-object v0, p0, Lxv;->a:Lxs;

    invoke-static {v0}, Lxs;->a(Lxs;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lxv;->a:Lxs;

    invoke-static {v0}, Lxs;->b(Lxs;)Lade;

    move-result-object v0

    invoke-interface {v0}, Lade;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lxv;->a:Lxs;

    invoke-static {v0}, Lxs;->a(Lxs;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lxv;->a:Lxs;

    invoke-static {v0}, Lxs;->a(Lxs;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lxv;->a:Lxs;

    invoke-static {v0}, Lxs;->a(Lxs;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Lzp;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method
