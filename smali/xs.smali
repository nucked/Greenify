.class Lxs;
.super Lvx;
.source "SourceFile"


# instance fields
.field private a:Lade;

.field private b:Landroid/view/Window$Callback;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvz;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static synthetic a(Lxs;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lxs;->b:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic b(Lxs;)Lade;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lxs;->a:Lade;

    return-object v0
.end method

.method private f()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-boolean v0, p0, Lxs;->c:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lxs;->a:Lade;

    new-instance v1, Lxu;

    invoke-direct {v1, p0, v3}, Lxu;-><init>(Lxs;Lxt;)V

    new-instance v2, Lxv;

    invoke-direct {v2, p0, v3}, Lxv;-><init>(Lxs;Lxt;)V

    invoke-interface {v0, v1, v2}, Lade;->a(Laaf;Lzq;)V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxs;->c:Z

    .line 578
    :cond_0
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->o()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Lou;->f(Landroid/view/View;F)V

    .line 141
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lxs;->a:Lade;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lade;->b(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->o()I

    move-result v0

    .line 253
    iget-object v1, p0, Lxs;->a:Lade;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lade;->c(I)V

    .line 254
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0, p1}, Lvx;->a(Landroid/content/res/Configuration;)V

    .line 191
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0, p1}, Lade;->b(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0, p1}, Lade;->c(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 464
    invoke-direct {p0}, Lxs;->f()Landroid/view/Menu;

    move-result-object v3

    .line 465
    if-eqz v3, :cond_0

    .line 466
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 469
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 474
    :cond_0
    return v1

    .line 466
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 468
    goto :goto_1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0, p1}, Lade;->a(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lxs;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lxs;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lxs;->a:Lade;

    invoke-interface {v0}, Lade;->d()V

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0}, Lxs;->f()Landroid/view/Menu;

    move-result-object v1

    .line 437
    instance-of v2, v1, Lzp;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lzp;

    move-object v2, v0

    .line 438
    :goto_0
    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {v2}, Lzp;->g()V

    .line 442
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 443
    iget-object v0, p0, Lxs;->b:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxs;->b:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_2
    if-eqz v2, :cond_3

    .line 449
    invoke-virtual {v2}, Lzp;->h()V

    .line 452
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 437
    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 449
    invoke-virtual {v2}, Lzp;->h()V

    :cond_5
    throw v0
.end method

.method public e(Z)V
    .locals 3

    .prologue
    .line 486
    iget-boolean v0, p0, Lxs;->d:Z

    if-ne p1, v0, :cond_1

    .line 495
    :cond_0
    return-void

    .line 489
    :cond_1
    iput-boolean p1, p0, Lxs;->d:Z

    .line 491
    iget-object v0, p0, Lxs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 493
    iget-object v0, p0, Lxs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz;

    invoke-interface {v0, p1}, Lvz;->a(Z)V

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
