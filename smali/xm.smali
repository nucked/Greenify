.class Lxm;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method public constructor <init>(Lxb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lxm;->a:Lxb;

    .line 2008
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2009
    return-void
.end method

.method private a(II)Z
    .locals 1

    .prologue
    const/4 v0, -0x5

    .line 2037
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lxm;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lxm;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lxm;->a:Lxb;

    invoke-virtual {v0, p1}, Lxb;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 2019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2020
    if-nez v0, :cond_0

    .line 2021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2023
    invoke-direct {p0, v0, v1}, Lxm;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lxm;->a:Lxb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxb;->d(Lxb;I)V

    .line 2025
    const/4 v0, 0x1

    .line 2028
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0}, Lxm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lagv;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxm;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2034
    return-void
.end method
