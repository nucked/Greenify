.class Lwv;
.super Lzg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lwu;


# direct methods
.method constructor <init>(Lwu;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lwv;->a:Lwu;

    .line 219
    invoke-direct {p0, p2}, Lzg;-><init>(Landroid/view/Window$Callback;)V

    .line 220
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lwv;->a:Lwu;

    invoke-virtual {v0, p1}, Lwu;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lzg;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1}, Lzg;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwv;->a:Lwu;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lwu;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 236
    if-nez p1, :cond_0

    instance-of v0, p2, Lzp;

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lzg;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lzg;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 280
    iget-object v0, p0, Lwv;->a:Lwu;

    invoke-virtual {v0, p1, p2}, Lwu;->b(ILandroid/view/Menu;)Z

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lzg;->onPanelClosed(ILandroid/view/Menu;)V

    .line 287
    iget-object v0, p0, Lwv;->a:Lwu;

    invoke-virtual {v0, p1, p2}, Lwu;->a(ILandroid/view/Menu;)V

    .line 288
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    instance-of v0, p3, Lzp;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lzp;

    move-object v2, v0

    .line 254
    :goto_0
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    .line 274
    :cond_0
    :goto_1
    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 264
    :cond_2
    if-eqz v2, :cond_3

    .line 265
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lzp;->c(Z)V

    .line 268
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lzg;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 270
    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2, v1}, Lzp;->c(Z)V

    goto :goto_1
.end method
