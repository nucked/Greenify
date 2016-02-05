.class final Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laaf;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method private constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 1737
    iput-object p1, p0, Lxo;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxb;Lxc;)V
    .locals 0

    .prologue
    .line 1737
    invoke-direct {p0, p1}, Lxo;-><init>(Lxb;)V

    return-void
.end method


# virtual methods
.method public a(Lzp;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1740
    invoke-virtual {p1}, Lzp;->p()Lzp;

    move-result-object v2

    .line 1741
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1742
    :goto_0
    iget-object v3, p0, Lxo;->a:Lxb;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Lxb;->a(Lxb;Landroid/view/Menu;)Lxn;

    move-result-object v3

    .line 1743
    if-eqz v3, :cond_1

    .line 1744
    if-eqz v0, :cond_3

    .line 1745
    iget-object v0, p0, Lxo;->a:Lxb;

    iget v4, v3, Lxn;->a:I

    invoke-static {v0, v4, v3, v2}, Lxb;->a(Lxb;ILxn;Landroid/view/Menu;)V

    .line 1746
    iget-object v0, p0, Lxo;->a:Lxb;

    invoke-static {v0, v3, v1}, Lxb;->a(Lxb;Lxn;Z)V

    .line 1753
    :cond_1
    :goto_1
    return-void

    .line 1741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1750
    :cond_3
    iget-object v0, p0, Lxo;->a:Lxb;

    invoke-static {v0, v3, p2}, Lxb;->a(Lxb;Lxn;Z)V

    goto :goto_1
.end method

.method public a(Lzp;)Z
    .locals 2

    .prologue
    .line 1757
    if-nez p1, :cond_0

    iget-object v0, p0, Lxo;->a:Lxb;

    iget-boolean v0, v0, Lxb;->h:Z

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lxo;->a:Lxb;

    invoke-virtual {v0}, Lxb;->m()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_0

    iget-object v1, p0, Lxo;->a:Lxb;

    invoke-virtual {v1}, Lxb;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1760
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1763
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
