.class public Lacg;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Loo;


# instance fields
.field private a:Laby;

.field private b:Lacf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lacg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-static {p1}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    .line 62
    new-instance v1, Laby;

    invoke-direct {v1, p0, v0}, Laby;-><init>(Landroid/view/View;Lagv;)V

    iput-object v1, p0, Lacg;->a:Laby;

    .line 63
    iget-object v1, p0, Lacg;->a:Laby;

    invoke-virtual {v1, p2, p3}, Laby;->a(Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v1, Lacf;

    invoke-direct {v1, p0, v0}, Lacf;-><init>(Landroid/widget/ImageView;Lagv;)V

    iput-object v1, p0, Lacg;->b:Lacf;

    .line 66
    iget-object v0, p0, Lacg;->b:Lacf;

    invoke-virtual {v0, p2, p3}, Lacf;->a(Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 146
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0}, Laby;->c()V

    .line 149
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0}, Laby;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0}, Laby;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lacg;->b:Lacf;

    invoke-virtual {v0, p1}, Lacf;->a(I)V

    .line 73
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lacg;->a:Laby;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lacg;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_0
    return-void
.end method
