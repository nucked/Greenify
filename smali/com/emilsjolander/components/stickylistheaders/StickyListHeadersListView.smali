.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Z

.field private c:I

.field private d:Landroid/view/View;

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private final i:Landroid/graphics/Rect;

.field private j:Ljava/lang/Long;

.field private k:Lahr;

.field private l:F

.field private m:Z

.field private n:Lahx;

.field private o:I

.field private p:Landroid/view/ViewConfiguration;

.field private q:Lahu;

.field private r:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    .line 54
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    .line 56
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:F

    .line 57
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 62
    new-instance v0, Lahv;

    invoke-direct {v0, p0}, Lahv;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Lahu;

    .line 74
    new-instance v0, Lahw;

    invoke-direct {v0, p0}, Lahw;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/database/DataSetObserver;

    .line 98
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 101
    invoke-super {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-super {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/view/ViewConfiguration;

    .line 105
    return-void
.end method

.method public static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lahx;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Lahx;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 109
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    .line 110
    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    .line 111
    return-void
.end method

.method private a(I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    invoke-virtual {v0}, Lahr;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-nez v0, :cond_1

    .line 354
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b(I)I

    move-result v6

    .line 277
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v0, v0, Lahr;->a:Lahq;

    invoke-interface {v0, v6}, Lahq;->a(I)J

    move-result-wide v0

    .line 278
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    .line 279
    :cond_2
    iput v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:I

    .line 280
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v2, v2, Lahr;->a:Lahq;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:I

    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-interface {v2, v3, v5, p0}, Lahq;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    .line 282
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b()V

    .line 284
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    .line 286
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v7

    .line 287
    if-eqz v7, :cond_4

    .line 288
    const/4 v3, 0x0

    .line 289
    const v1, 0x1869f

    move v5, v4

    .line 291
    :goto_0
    if-lt v5, v7, :cond_6

    .line 313
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 315
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lahy;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 317
    if-nez v6, :cond_a

    invoke-super {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_a

    .line 318
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-nez v1, :cond_a

    .line 319
    iput v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 342
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    move v1, v0

    :goto_2
    move v2, v4

    .line 343
    :goto_3
    if-ge v2, v7, :cond_0

    .line 344
    invoke-super {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lahy;

    .line 345
    invoke-virtual {v0}, Lahy;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    iget-object v3, v0, Lahy;->d:Landroid/view/View;

    .line 347
    invoke-virtual {v0}, Lahy;->getTop()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 348
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_5
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 292
    :cond_6
    invoke-super {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lahy;

    .line 295
    iget-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-eqz v2, :cond_7

    .line 296
    invoke-virtual {v0}, Lahy;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v2, v8

    .line 301
    :goto_5
    if-gez v2, :cond_8

    move v0, v1

    move-object v1, v3

    .line 291
    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 298
    :cond_7
    invoke-virtual {v0}, Lahy;->getTop()I

    move-result v2

    goto :goto_5

    .line 305
    :cond_8
    if-eqz v3, :cond_9

    .line 306
    invoke-virtual {v3}, Lahy;->a()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 307
    invoke-virtual {v0}, Lahy;->a()Z

    move-result v8

    if-eqz v8, :cond_11

    if-ge v2, v1, :cond_11

    :cond_9
    move-object v1, v0

    move v0, v2

    .line 309
    goto :goto_6

    .line 321
    :cond_a
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-eqz v1, :cond_c

    .line 322
    invoke-virtual {v3}, Lahy;->getTop()I

    move-result v1

    .line 323
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    .line 322
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 324
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 325
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :goto_7
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    goto :goto_1

    .line 326
    :cond_b
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    goto :goto_7

    .line 328
    :cond_c
    invoke-virtual {v3}, Lahy;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 330
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    if-gez v1, :cond_d

    :goto_8
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    goto/16 :goto_1

    .line 331
    :cond_d
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    goto :goto_8

    .line 335
    :cond_e
    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    .line 336
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-eqz v0, :cond_4

    .line 337
    iget v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    goto/16 :goto_1

    :cond_f
    move v1, v4

    .line 342
    goto/16 :goto_2

    .line 350
    :cond_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_11
    move v0, v1

    move-object v1, v3

    goto :goto_6
.end method

.method private b(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return p1

    :cond_1
    move v0, v1

    .line 361
    :goto_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 370
    :goto_2
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    if-lez p1, :cond_0

    .line 373
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_3

    .line 363
    add-int/2addr p1, v0

    .line 364
    goto :goto_2

    .line 361
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 234
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    .line 236
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 241
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getRight()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 241
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 243
    return-void

    .line 238
    :cond_0
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()V

    return-void
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(I)V

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-nez v0, :cond_2

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 212
    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    sub-int/2addr v1, v0

    .line 213
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 214
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 215
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 216
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 222
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 224
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public getAdapter()Lahq;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v0, v0, Lahr;->a:Lahq;

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getAdapter()Lahq;

    move-result-object v0

    return-object v0
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 266
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 267
    invoke-direct {p0, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a(I)V

    .line 269
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 385
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 403
    if-nez v0, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:F

    .line 406
    iput-boolean v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 407
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 408
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 409
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 436
    :cond_0
    :goto_0
    return v6

    .line 412
    :cond_1
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    if-eqz v1, :cond_4

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/view/ViewConfiguration;

    .line 414
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 415
    if-eq v0, v6, :cond_2

    .line 416
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 417
    :cond_2
    iput v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:F

    .line 418
    iput-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 419
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 420
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 421
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 422
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Lahx;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Lahx;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    .line 424
    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:I

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    .line 423
    invoke-interface/range {v0 .. v6}, Lahx;->a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    goto :goto_0

    .line 429
    :cond_3
    iput v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:F

    .line 430
    iput-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 431
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 432
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 433
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate(IIII)V

    .line 436
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 115
    check-cast p1, Lahy;

    iget-object v0, p1, Lahy;->a:Landroid/view/View;

    .line 116
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    .line 182
    :cond_0
    instance-of v0, p1, Lahq;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    new-instance v0, Lahr;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    check-cast p1, Lahq;

    invoke-direct {v0, v1, p1}, Lahr;-><init>(Landroid/content/Context;Lahq;)V

    .line 186
    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    .line 188
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lahr;->a(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:I

    invoke-virtual {v0, v1}, Lahr;->a(I)V

    .line 190
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lahr;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 191
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Lahu;

    invoke-virtual {v0, v1}, Lahr;->a(Lahu;)V

    .line 192
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()V

    .line 193
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eq v0, p1, :cond_1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 169
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    .line 171
    :cond_1
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 255
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Z

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 257
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Landroid/graphics/drawable/Drawable;

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 137
    if-ltz v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDividerHeight(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    invoke-virtual {v0, p1}, Lahr;->a(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 144
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 146
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .prologue
    .line 150
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:I

    .line 151
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lahr;

    invoke-virtual {v0, p1}, Lahr;->a(I)V

    .line 153
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 154
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 156
    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lahx;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Lahx;

    .line 398
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 392
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 393
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
