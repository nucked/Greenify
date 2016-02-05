.class public Laca;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Lvs;


# instance fields
.field private a:Lagv;

.field private b:Lacc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Lyc;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Laca;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {p1}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    iput-object v0, p0, Laca;->a:Lagv;

    .line 60
    new-instance v0, Lacc;

    iget-object v1, p0, Laca;->a:Lagv;

    invoke-direct {v0, p0, v1}, Lacc;-><init>(Landroid/widget/CompoundButton;Lagv;)V

    iput-object v0, p0, Laca;->b:Lacc;

    .line 61
    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0, p2, p3}, Lacc;->a(Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 82
    iget-object v1, p0, Laca;->b:Lacc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laca;->b:Lacc;

    invoke-virtual {v1, v0}, Lacc;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Laca;->b:Lacc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0}, Lacc;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Laca;->b:Lacc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0}, Lacc;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Laca;->a:Lagv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laca;->a:Lagv;

    invoke-virtual {v0, p1}, Lagv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Laca;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Laca;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lis;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Laca;->b:Lacc;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0}, Lacc;->c()V

    .line 70
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Laca;->b:Lacc;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0, p1}, Lacc;->a(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Laca;->b:Lacc;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Laca;->b:Lacc;

    invoke-virtual {v0, p1}, Lacc;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_0
    return-void
.end method
