.class public Lacy;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Loo;


# instance fields
.field private a:Lagv;

.field private b:Laby;

.field private c:Lacw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lacy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lacy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0}, Lacy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    iput-object v0, p0, Lacy;->a:Lagv;

    .line 63
    new-instance v0, Laby;

    iget-object v1, p0, Lacy;->a:Lagv;

    invoke-direct {v0, p0, v1}, Laby;-><init>(Landroid/view/View;Lagv;)V

    iput-object v0, p0, Lacy;->b:Laby;

    .line 64
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0, p2, p3}, Laby;->a(Landroid/util/AttributeSet;I)V

    .line 66
    invoke-static {p0}, Lacw;->a(Landroid/widget/TextView;)Lacw;

    move-result-object v0

    iput-object v0, p0, Lacy;->c:Lacw;

    .line 67
    iget-object v0, p0, Lacy;->c:Lacw;

    invoke-virtual {v0, p2, p3}, Lacw;->a(Landroid/util/AttributeSet;I)V

    .line 68
    iget-object v0, p0, Lacy;->c:Lacw;

    invoke-virtual {v0}, Lacw;->a()V

    .line 69
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 150
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0}, Laby;->c()V

    .line 153
    :cond_0
    iget-object v0, p0, Lacy;->c:Lacw;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lacy;->c:Lacw;

    invoke-virtual {v0}, Lacw;->a()V

    .line 156
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacy;->b:Laby;

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
    .line 135
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacy;->b:Laby;

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
    .line 81
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0, p1}, Laby;->a(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/content/res/ColorStateList;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lacy;->b:Laby;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lacy;->b:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    iget-object v0, p0, Lacy;->c:Lacw;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lacy;->c:Lacw;

    invoke-virtual {v0, p1, p2}, Lacw;->a(Landroid/content/Context;I)V

    .line 145
    :cond_0
    return-void
.end method
