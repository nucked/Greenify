.class public Lace;
.super Landroid/widget/ImageButton;
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
    .line 55
    sget v0, Lyc;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-static {p1}, Lagv;->a(Landroid/content/Context;)Lagv;

    move-result-object v0

    .line 63
    new-instance v1, Laby;

    invoke-direct {v1, p0, v0}, Laby;-><init>(Landroid/view/View;Lagv;)V

    iput-object v1, p0, Lace;->a:Laby;

    .line 64
    iget-object v1, p0, Lace;->a:Laby;

    invoke-virtual {v1, p2, p3}, Laby;->a(Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v1, Lacf;

    invoke-direct {v1, p0, v0}, Lacf;-><init>(Landroid/widget/ImageView;Lagv;)V

    iput-object v1, p0, Lace;->b:Lacf;

    .line 67
    iget-object v0, p0, Lace;->b:Lacf;

    invoke-virtual {v0, p2, p3}, Lacf;->a(Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 147
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lace;->a:Laby;

    invoke-virtual {v0}, Laby;->c()V

    .line 150
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Laby;

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
    .line 140
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Laby;

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
    .line 86
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lace;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lace;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lace;->b:Lacf;

    invoke-virtual {v0, p1}, Lacf;->a(I)V

    .line 74
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lace;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/content/res/ColorStateList;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lace;->a:Laby;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lace;->a:Laby;

    invoke-virtual {v0, p1}, Laby;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 129
    :cond_0
    return-void
.end method
