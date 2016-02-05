.class public Lahy;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field b:Landroid/graphics/drawable/Drawable;

.field c:I

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List view item must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lahy;->a:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 48
    iget-object v0, p0, Lahy;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lahy;->removeView(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lahy;->a:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 52
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lahy;->addView(Landroid/view/View;)V

    .line 59
    :cond_2
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    if-eq v0, p2, :cond_4

    .line 60
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lahy;->removeView(Landroid/view/View;)V

    .line 63
    :cond_3
    iput-object p2, p0, Lahy;->d:Landroid/view/View;

    .line 64
    if-eqz p2, :cond_4

    .line 65
    invoke-virtual {p0, p2}, Lahy;->addView(Landroid/view/View;)V

    .line 69
    :cond_4
    iget-object v0, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    if-eq v0, p3, :cond_5

    .line 70
    iput-object p3, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    .line 71
    iput p4, p0, Lahy;->c:I

    .line 72
    invoke-virtual {p0}, Lahy;->invalidate()V

    .line 74
    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lahy;->getWidth()I

    move-result v0

    iget v1, p0, Lahy;->c:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    .line 119
    invoke-virtual {p0}, Lahy;->getWidth()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lahy;->getHeight()I

    move-result v1

    .line 122
    iget-object v2, p0, Lahy;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lahy;->d:Landroid/view/View;

    iget-object v3, p0, Lahy;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget-object v2, p0, Lahy;->a:Landroid/view/View;

    iget-object v3, p0, Lahy;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lahy;->c:I

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    iget-object v2, p0, Lahy;->a:Landroid/view/View;

    iget v3, p0, Lahy;->c:I

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lahy;->a:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 83
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 86
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_0

    .line 89
    iget-object v4, p0, Lahy;->d:Landroid/view/View;

    .line 90
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 89
    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 95
    :goto_0
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 99
    :goto_1
    iget-object v4, p0, Lahy;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 100
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_2

    .line 101
    iget-object v1, p0, Lahy;->a:Landroid/view/View;

    .line 102
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 101
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 107
    :goto_2
    iget-object v1, p0, Lahy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    invoke-virtual {p0, v2, v0}, Lahy;->setMeasuredDimension(II)V

    .line 110
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lahy;->d:Landroid/view/View;

    .line 93
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 92
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lahy;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 97
    iget v0, p0, Lahy;->c:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 104
    :cond_2
    iget-object v4, p0, Lahy;->a:Landroid/view/View;

    .line 105
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 104
    invoke-virtual {v4, v3, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
