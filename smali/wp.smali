.class public Lwp;
.super Lxp;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lwb;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    .prologue
    .line 92
    invoke-static {p1, p2}, Lwp;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lxp;-><init>(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Lwb;

    invoke-virtual {p0}, Lwp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lwp;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lwb;-><init>(Landroid/content/Context;Lxp;Landroid/view/Window;)V

    iput-object v0, p0, Lwp;->a:Lwb;

    .line 94
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 104
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 109
    :goto_0
    return p1

    .line 107
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lyc;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method static synthetic a(Lwp;)Lwb;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lwp;->a:Lwb;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1}, Lxp;->onCreate(Landroid/os/Bundle;)V

    .line 240
    iget-object v0, p0, Lwp;->a:Lwb;

    invoke-virtual {v0}, Lwb;->a()V

    .line 241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lwp;->a:Lwb;

    invoke-virtual {v0, p1, p2}, Lwb;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lxp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lwp;->a:Lwb;

    invoke-virtual {v0, p1, p2}, Lwb;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lxp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lxp;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lwp;->a:Lwb;

    invoke-virtual {v0, p1}, Lwb;->a(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
