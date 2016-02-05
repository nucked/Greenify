.class public Lcom/oasisfeng/greenify/GreenifyActivity;
.super Lwr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lwr;-><init>()V

    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private m()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/GreenifyActivity;->a(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/transition/Explode;

    invoke-direct {v1}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 44
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/transition/Explode;

    invoke-direct {v1}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->m()V

    .line 22
    invoke-super {p0, p1}, Lwr;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->l()V

    .line 26
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/GreenifyActivity;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Lff;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lbzh;

    invoke-direct {v2}, Lbzh;-><init>()V

    invoke-virtual {v0, v1, v2}, Lff;->a(ILei;)Lff;

    move-result-object v0

    invoke-virtual {v0}, Lff;->a()I

    .line 27
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const-string v0, "lge"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lwr;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const-string v0, "lge"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lwr;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lwr;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/oasisfeng/greenify/GreenifyActivity;->setIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
