.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lal;
    a = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:Lrd;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 224
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 225
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 226
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 227
    return-void
.end method

.method static synthetic c(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    .line 468
    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->e()V

    return-void
.end method

.method static synthetic g(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->c()Z

    move-result v0

    return v0
.end method

.method private getDownNestedPreScrollRange()I
    .locals 8

    .prologue
    .line 353
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 355
    iget v1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 382
    :goto_0
    return v1

    .line 358
    :cond_0
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 360
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lae;

    .line 362
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 363
    iget v5, v0, Lae;->a:I

    .line 365
    and-int/lit8 v6, v5, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 367
    iget v6, v0, Lae;->topMargin:I

    iget v0, v0, Lae;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    .line 369
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_1

    .line 371
    invoke-static {v3}, Lou;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 374
    :cond_1
    add-int/2addr v0, v4

    goto :goto_2

    .line 376
    :cond_2
    if-lez v1, :cond_4

    .line 382
    :cond_3
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private getDownNestedScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 389
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 391
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 420
    :goto_0
    return v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 396
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 397
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lae;

    .line 398
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 399
    iget v7, v0, Lae;->topMargin:I

    iget v8, v0, Lae;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 401
    iget v0, v0, Lae;->a:I

    .line 403
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_2

    .line 405
    add-int/2addr v1, v6

    .line 407
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 411
    invoke-static {v5}, Lou;->o(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 420
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    goto :goto_0

    .line 395
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private getPendingAction()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    return v0
.end method

.method private getTopInset()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Lrd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Lrd;

    invoke-virtual {v0}, Lrd;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUpNestedPreScrollRange()I
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic h(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Landroid/support/design/widget/AppBarLayout;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    return v0
.end method

.method private setWindowInsets(Lrd;)V
    .locals 3

    .prologue
    .line 476
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 477
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout;->g:Lrd;

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    invoke-static {v2, p1}, Lou;->b(Landroid/view/View;Lrd;)Lrd;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lrd;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :cond_0
    return-void

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()Lae;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lae;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lae;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lae;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lae;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lae;
    .locals 1

    .prologue
    .line 289
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lae;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lae;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lae;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lae;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 294
    :cond_1
    new-instance v0, Lae;

    invoke-direct {v0, p1}, Lae;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 267
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    .line 269
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 270
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 274
    instance-of v0, p1, Lae;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Lae;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()Lae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Lae;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Lae;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lae;

    move-result-object v0

    return-object v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Lrd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Lrd;

    invoke-virtual {v0}, Lrd;->b()I

    move-result v0

    .line 425
    :goto_0
    invoke-static {p0}, Lou;->o(Landroid/view/View;)I

    move-result v2

    .line 426
    if-eqz v2, :cond_2

    .line 428
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v0

    .line 433
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .line 433
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lou;->o(Landroid/view/View;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public getTargetElevation()F
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 307
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 308
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 335
    :goto_0
    return v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    .line 313
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 314
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lae;

    .line 315
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 316
    iget v7, v0, Lae;->a:I

    .line 318
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 320
    iget v8, v0, Lae;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Lae;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    .line 322
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1

    .line 326
    invoke-static {v5}, Lou;->o(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 335
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    goto :goto_0

    .line 312
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 207
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    .line 209
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 210
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 211
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lae;

    .line 213
    invoke-virtual {v0}, Lae;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 220
    :cond_0
    return-void

    .line 210
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 201
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    .line 202
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lou;->z(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZ)V

    .line 252
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 0

    .prologue
    .line 451
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    .line 452
    return-void
.end method
