.class public Lan;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:Lak;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2214
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2174
    iput-boolean v0, p0, Lan;->b:Z

    .line 2181
    iput v0, p0, Lan;->c:I

    .line 2187
    iput v0, p0, Lan;->d:I

    .line 2194
    iput v1, p0, Lan;->e:I

    .line 2200
    iput v1, p0, Lan;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    .line 2215
    return-void
.end method

.method public constructor <init>(Lan;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2246
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lan;->b:Z

    .line 2181
    iput v0, p0, Lan;->c:I

    .line 2187
    iput v0, p0, Lan;->d:I

    .line 2194
    iput v1, p0, Lan;->e:I

    .line 2200
    iput v1, p0, Lan;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    .line 2247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2218
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2174
    iput-boolean v2, p0, Lan;->b:Z

    .line 2181
    iput v2, p0, Lan;->c:I

    .line 2187
    iput v2, p0, Lan;->d:I

    .line 2194
    iput v3, p0, Lan;->e:I

    .line 2200
    iput v3, p0, Lan;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    .line 2220
    sget-object v0, Lx;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2223
    sget v1, Lx;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lan;->c:I

    .line 2226
    sget v1, Lx;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lan;->f:I

    .line 2228
    sget v1, Lx;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lan;->d:I

    .line 2232
    sget v1, Lx;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lan;->e:I

    .line 2235
    sget v1, Lx;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lan;->b:Z

    .line 2237
    iget-boolean v1, p0, Lan;->b:Z

    if-eqz v1, :cond_0

    .line 2238
    sget v1, Lx;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lak;

    move-result-object v1

    iput-object v1, p0, Lan;->a:Lak;

    .line 2242
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2254
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lan;->b:Z

    .line 2181
    iput v0, p0, Lan;->c:I

    .line 2187
    iput v0, p0, Lan;->d:I

    .line 2194
    iput v1, p0, Lan;->e:I

    .line 2200
    iput v1, p0, Lan;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2250
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lan;->b:Z

    .line 2181
    iput v0, p0, Lan;->c:I

    .line 2187
    iput v0, p0, Lan;->d:I

    .line 2194
    iput v1, p0, Lan;->e:I

    .line 2200
    iput v1, p0, Lan;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    .line 2251
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2465
    iget v0, p0, Lan;->f:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lan;->g:Landroid/view/View;

    .line 2466
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2467
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    .line 2468
    iget-object v1, p0, Lan;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2469
    :goto_0
    if-eq v1, p2, :cond_3

    if-eqz v1, :cond_3

    .line 2471
    if-ne v1, p1, :cond_1

    .line 2472
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    iput-object v3, p0, Lan;->h:Landroid/view/View;

    iput-object v3, p0, Lan;->g:Landroid/view/View;

    .line 2493
    :goto_1
    return-void

    .line 2476
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2479
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2480
    check-cast v0, Landroid/view/View;

    .line 2470
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2483
    :cond_3
    iput-object v0, p0, Lan;->h:Landroid/view/View;

    goto :goto_1

    .line 2485
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2486
    iput-object v3, p0, Lan;->h:Landroid/view/View;

    iput-object v3, p0, Lan;->g:Landroid/view/View;

    goto :goto_1

    .line 2489
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lan;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2501
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lan;->f:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 2518
    :goto_0
    return v0

    .line 2505
    :cond_0
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    .line 2506
    iget-object v1, p0, Lan;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2507
    :goto_1
    if-eq v1, p2, :cond_4

    .line 2509
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 2510
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lan;->h:Landroid/view/View;

    iput-object v0, p0, Lan;->g:Landroid/view/View;

    move v0, v2

    .line 2511
    goto :goto_0

    .line 2513
    :cond_2
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 2514
    check-cast v0, Landroid/view/View;

    .line 2508
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2517
    :cond_4
    iput-object v0, p0, Lan;->h:Landroid/view/View;

    .line 2518
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lan;->f:I

    return v0
.end method

.method public a(Lak;)V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lan;->a:Lak;

    if-eq v0, p1, :cond_0

    .line 2302
    iput-object p1, p0, Lan;->a:Lak;

    .line 2303
    const/4 v0, 0x0

    iput-object v0, p0, Lan;->j:Ljava/lang/Object;

    .line 2304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan;->b:Z

    .line 2306
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2314
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 2383
    iput-boolean p1, p0, Lan;->l:Z

    .line 2384
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2358
    iget-boolean v0, p0, Lan;->k:Z

    if-eqz v0, :cond_0

    .line 2359
    const/4 v0, 0x1

    .line 2362
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lan;->k:Z

    iget-object v0, p0, Lan;->a:Lak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lan;->a:Lak;

    invoke-virtual {v0, p1, p2}, Lak;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lan;->k:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lan;->h:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lan;->a:Lak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lan;->a:Lak;

    invoke-virtual {v0, p1, p2, p3}, Lak;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

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

.method public b()Lak;
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lan;->a:Lak;

    return-object v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2435
    iget v1, p0, Lan;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2436
    iput-object v0, p0, Lan;->h:Landroid/view/View;

    iput-object v0, p0, Lan;->g:Landroid/view/View;

    .line 2443
    :goto_0
    return-object v0

    .line 2440
    :cond_0
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lan;->b(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2441
    :cond_1
    invoke-direct {p0, p2, p1}, Lan;->a(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2443
    :cond_2
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 2395
    iput-boolean p1, p0, Lan;->m:Z

    .line 2396
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lan;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lan;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lan;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lan;->a:Lak;

    if-nez v0, :cond_0

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan;->k:Z

    .line 2343
    :cond_0
    iget-boolean v0, p0, Lan;->k:Z

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan;->k:Z

    .line 2376
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan;->l:Z

    .line 2380
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lan;->l:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 2391
    iget-boolean v0, p0, Lan;->m:Z

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan;->m:Z

    .line 2400
    return-void
.end method
