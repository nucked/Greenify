.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Loi;
.implements Lon;


# static fields
.field private static final ao:Landroid/view/animation/Interpolator;

.field private static final i:Z

.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private final E:Z

.field private final F:Landroid/view/accessibility/AccessibilityManager;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:I

.field private J:Lts;

.field private K:Lts;

.field private L:Lts;

.field private M:Lts;

.field private N:I

.field private O:I

.field private P:Landroid/view/VelocityTracker;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private final V:I

.field private final W:I

.field public final a:Lafp;

.field private aa:F

.field private final ab:Lafx;

.field private ac:Lafn;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafn;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Laff;

.field private af:Z

.field private ag:Lafz;

.field private ah:Lafc;

.field private final ai:[I

.field private final aj:Loj;

.field private final ak:[I

.field private final al:[I

.field private final am:[I

.field private an:Ljava/lang/Runnable;

.field private final ap:Lahk;

.field public b:Labu;

.field public c:Lacz;

.field public final d:Lahi;

.field public e:Lafd;

.field public final f:Lafv;

.field public g:Z

.field public h:Z

.field private final k:Lafr;

.field private l:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private m:Z

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/graphics/Rect;

.field private p:Laez;

.field private q:Lafj;

.field private r:Lafq;

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafi;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafm;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lafm;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->j:[Ljava/lang/Class;

    .line 400
    new-instance v0, Laev;

    invoke-direct {v0}, Laev;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 157
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 454
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    new-instance v0, Lafr;

    invoke-direct {v0, p0, v1}, Lafr;-><init>(Landroid/support/v7/widget/RecyclerView;Laet;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lafr;

    .line 241
    new-instance v0, Lafp;

    invoke-direct {v0, p0}, Lafp;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    .line 258
    new-instance v0, Lahi;

    invoke-direct {v0}, Lahi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    .line 272
    new-instance v0, Laet;

    invoke-direct {v0, p0}, Laet;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    .line 313
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 323
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 327
    new-instance v0, Ladf;

    invoke-direct {v0}, Ladf;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    .line 352
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 363
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    .line 365
    new-instance v0, Lafx;

    invoke-direct {v0, p0}, Lafx;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Lafx;

    .line 367
    new-instance v0, Lafv;

    invoke-direct {v0}, Lafv;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    .line 373
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 374
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 375
    new-instance v0, Lafh;

    invoke-direct {v0, p0, v1}, Lafh;-><init>(Landroid/support/v7/widget/RecyclerView;Laet;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Laff;

    .line 377
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 383
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    .line 386
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    .line 387
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    .line 388
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    .line 390
    new-instance v0, Laeu;

    invoke-direct {v0, p0}, Laeu;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    .line 410
    new-instance v0, Laew;

    invoke-direct {v0, p0}, Laew;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:Lahk;

    .line 455
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 456
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 458
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Z

    .line 460
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 462
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 463
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    .line 464
    invoke-static {p0}, Lou;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Laff;

    invoke-virtual {v0, v1}, Lafd;->a(Laff;)V

    .line 467
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 468
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 470
    invoke-static {p0}, Lou;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {p0, v6}, Lou;->c(Landroid/view/View;I)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    .line 477
    new-instance v0, Lafz;

    invoke-direct {v0, p0}, Lafz;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Lafz;)V

    .line 479
    if-eqz p2, :cond_1

    .line 481
    sget-object v0, Lyq;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 483
    sget v1, Lyq;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 485
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 488
    :cond_1
    new-instance v0, Loj;

    invoke-direct {v0, p0}, Loj;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    .line 489
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 490
    return-void

    :cond_2
    move v0, v5

    .line 458
    goto :goto_0

    :cond_3
    move v0, v5

    .line 464
    goto :goto_1
.end method

.method private A()V
    .locals 2

    .prologue
    .line 2641
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2642
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2647
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2648
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 2650
    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 2657
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2658
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2659
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2660
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2661
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2662
    invoke-static {v1, v0}, Lrf;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2663
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2665
    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 2739
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2741
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 2743
    :cond_0
    return-void
.end method

.method private D()Z
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2756
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->a()V

    .line 2760
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 2761
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0}, Lafj;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 2766
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2767
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->b()V

    .line 2771
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    .line 2772
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-static {v3}, Lafj;->a(Lafj;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v3}, Laez;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Lafv;->c(Lafv;Z)Z

    .line 2776
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v4}, Lafv;->b(Lafv;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v3, v2}, Lafv;->d(Lafv;Z)Z

    .line 2779
    return-void

    .line 2769
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->e()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2771
    goto :goto_1

    :cond_6
    move v3, v1

    .line 2772
    goto :goto_2

    :cond_7
    move v2, v1

    .line 2776
    goto :goto_3
.end method

.method private F()V
    .locals 7

    .prologue
    .line 3980
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v1

    .line 3981
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3982
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v2

    .line 3983
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 3984
    if-eqz v3, :cond_1

    iget-object v4, v3, Lafy;->h:Lafy;

    if-eqz v4, :cond_1

    .line 3985
    iget-object v3, v3, Lafy;->h:Lafy;

    iget-object v3, v3, Lafy;->a:Landroid/view/View;

    .line 3986
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3987
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3988
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 3990
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 3981
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3996
    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 573
    :cond_0
    :goto_0
    return-object p2

    .line 570
    :cond_1
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(FFFF)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1853
    const/4 v1, 0x0

    .line 1854
    cmpg-float v2, p2, v5

    if-gez v2, :cond_4

    .line 1855
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1856
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    neg-float v3, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Lts;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 1866
    :cond_0
    :goto_0
    cmpg-float v2, p4, v5

    if-gez v2, :cond_5

    .line 1867
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1868
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    neg-float v3, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lts;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1878
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v0, p2, v5

    if-nez v0, :cond_2

    cmpl-float v0, p4, v5

    if-eqz v0, :cond_3

    .line 1879
    :cond_2
    invoke-static {p0}, Lou;->d(Landroid/view/View;)V

    .line 1881
    :cond_3
    return-void

    .line 1859
    :cond_4
    cmpl-float v2, p2, v5

    if-lez v2, :cond_0

    .line 1860
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1861
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lts;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 1862
    goto :goto_0

    .line 1871
    :cond_5
    cmpl-float v2, p4, v5

    if-lez v2, :cond_6

    .line 1872
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1873
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Lts;->a(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private a(Laez;ZZ)V
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lafr;

    invoke-virtual {v0, v1}, Laez;->b(Lafb;)V

    .line 864
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v0, p0}, Laez;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 866
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 868
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0}, Lafd;->c()V

    .line 875
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, v1}, Lafj;->c(Lafp;)V

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, v1}, Lafj;->b(Lafp;)V

    .line 880
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->a()V

    .line 882
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->a()V

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    .line 884
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    .line 885
    if-eqz p1, :cond_5

    .line 886
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lafr;

    invoke-virtual {p1, v1}, Laez;->a(Lafb;)V

    .line 887
    invoke-virtual {p1, p0}, Laez;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 889
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v1, :cond_6

    .line 890
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v1, v0, v2}, Lafj;->a(Laez;Laez;)V

    .line 892
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v1, v0, v2, p2}, Lafp;->a(Laez;Laez;Z)V

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lafv;->a(Lafv;Z)Z

    .line 894
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 895
    return-void
.end method

.method private a(Lafy;Lafg;)V
    .locals 3

    .prologue
    .line 2958
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lafy;->a(II)V

    .line 2959
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->c(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lafy;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lafy;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lafy;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2961
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;)J

    move-result-wide v0

    .line 2962
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v2, v0, v1, p1}, Lahi;->a(JLafy;)V

    .line 2964
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0, p1, p2}, Lahi;->a(Lafy;Lafg;)V

    .line 2965
    return-void
.end method

.method private a(Lafy;Lafg;Lafg;)V
    .locals 1

    .prologue
    .line 3036
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lafy;->a(Z)V

    .line 3037
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1, p2, p3}, Lafd;->b(Lafy;Lafg;Lafg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 3040
    :cond_0
    return-void
.end method

.method private a(Lafy;Lafy;Lafg;Lafg;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3053
    invoke-virtual {p1, v1}, Lafy;->a(Z)V

    .line 3054
    if-eq p1, p2, :cond_0

    .line 3055
    iput-object p2, p1, Lafy;->g:Lafy;

    .line 3057
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Lafy;)V

    .line 3058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1}, Lafp;->d(Lafy;)V

    .line 3059
    invoke-virtual {p2, v1}, Lafy;->a(Z)V

    .line 3060
    iput-object p1, p2, Lafy;->h:Lafy;

    .line 3062
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lafd;->a(Lafy;Lafy;Lafg;Lafg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3063
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 3065
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 8

    .prologue
    .line 515
    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 527
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lafj;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    .line 530
    const/4 v1, 0x0

    .line 532
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->j:[Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 534
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p3, v0, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v1, v2

    .line 544
    :goto_1
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafj;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Lafj;)V

    .line 564
    :cond_0
    return-void

    .line 525
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 537
    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 542
    goto :goto_1

    .line 538
    :catch_1
    move-exception v1

    .line 539
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 546
    :catch_2
    move-exception v0

    .line 547
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 549
    :catch_3
    move-exception v0

    .line 550
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 552
    :catch_4
    move-exception v0

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 555
    :catch_5
    move-exception v0

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 558
    :catch_6
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;Lafg;)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;Lafg;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Lafy;Lafg;Lafg;)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2968
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v5

    .line 2969
    if-nez v5, :cond_0

    .line 2970
    aput v4, p1, v4

    .line 2971
    aput v4, p1, v7

    .line 2991
    :goto_0
    return-void

    .line 2974
    :cond_0
    const v2, 0x7fffffff

    .line 2975
    const/high16 v0, -0x80000000

    move v3, v4

    .line 2976
    :goto_1
    if-ge v3, v5, :cond_3

    .line 2977
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v1, v3}, Lacz;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v1

    .line 2978
    invoke-virtual {v1}, Lafy;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    .line 2976
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 2981
    :cond_1
    invoke-virtual {v1}, Lafy;->d()I

    move-result v1

    .line 2982
    if-ge v1, v2, :cond_2

    move v2, v1

    .line 2985
    :cond_2
    if-le v1, v0, :cond_4

    move v0, v1

    move v1, v2

    .line 2986
    goto :goto_2

    .line 2989
    :cond_3
    aput v2, p1, v4

    .line 2990
    aput v0, p1, v7

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    return v0
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Lafy;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Lafy;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 2153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2154
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    .line 2155
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    .line 2158
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 2159
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafm;

    .line 2161
    invoke-interface {v0, p0, p1}, Lafm;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 2162
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    .line 2163
    const/4 v0, 0x1

    .line 2166
    :goto_1
    return v0

    .line 2159
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2166
    goto :goto_1
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;Lafy;)I
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Lafy;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)Lafy;
    .locals 1

    .prologue
    .line 3408
    if-nez p0, :cond_0

    .line 3409
    const/4 v0, 0x0

    .line 3411
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->a:Lafy;

    goto :goto_0
.end method

.method private b(Lafy;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1066
    iget-object v2, p1, Lafy;->a:Landroid/view/View;

    .line 1067
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 1068
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lafy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lafp;->d(Lafy;)V

    .line 1069
    invoke-virtual {p1}, Lafy;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lacz;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1077
    :goto_1
    return-void

    .line 1067
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :cond_1
    if-nez v0, :cond_2

    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, v2, v1}, Lacz;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1075
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, v2}, Lacz;->d(Landroid/view/View;)V

    goto :goto_1
.end method

.method private b(Lafy;Lafg;Lafg;)V
    .locals 1

    .prologue
    .line 3044
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Lafy;)V

    .line 3045
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lafy;->a(Z)V

    .line 3046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1, p2, p3}, Lafd;->a(Lafy;Lafg;Lafg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3047
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    .line 3049
    :cond_0
    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;Lafg;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;Lafg;Lafg;)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2171
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    if-eqz v3, :cond_0

    .line 2172
    if-nez v0, :cond_1

    .line 2174
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    .line 2187
    :cond_0
    if-eqz v0, :cond_5

    .line 2188
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 2189
    :goto_0
    if-ge v3, v4, :cond_5

    .line 2190
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafm;

    .line 2191
    invoke-interface {v0, p0, p1}, Lafm;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2192
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    move v0, v1

    .line 2197
    :goto_1
    return v0

    .line 2176
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    invoke-interface {v2, p0, p1}, Lafm;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2177
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 2179
    :cond_2
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Lafm;

    :cond_3
    move v0, v1

    .line 2181
    goto :goto_1

    .line 2189
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 2197
    goto :goto_1
.end method

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    return-void
.end method

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 2470
    invoke-static {p1}, Lnz;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2471
    invoke-static {p1, v0}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    if-ne v1, v2, :cond_0

    .line 2473
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2474
    :goto_0
    invoke-static {p1, v0}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2475
    invoke-static {p1, v0}, Lnz;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2476
    invoke-static {p1, v0}, Lnz;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2478
    :cond_0
    return-void

    .line 2473
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lafy;)Z
    .locals 1

    .prologue
    .line 3342
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1}, Lafd;->g(Lafy;)Z

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

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private d(Lafy;)I
    .locals 2

    .prologue
    .line 8621
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lafy;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lafy;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8624
    :cond_0
    const/4 v0, -0x1

    .line 8626
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    iget v1, p1, Lafy;->b:I

    invoke-virtual {v0, v1}, Labu;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    return v0
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p1}, Lafj;->c(I)V

    .line 1350
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public static synthetic e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()V

    return-void
.end method

.method public static synthetic f(Landroid/support/v7/widget/RecyclerView;)Lafj;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    return-object v0
.end method

.method public static synthetic g(Landroid/support/v7/widget/RecyclerView;)Laez;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    return-object v0
.end method

.method private g(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, p1}, Lacz;->f(Landroid/view/View;)Z

    move-result v0

    .line 1088
    if-eqz v0, :cond_0

    .line 1089
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v1

    .line 1090
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v2, v1}, Lafp;->d(Lafy;)V

    .line 1091
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v2, v1}, Lafp;->b(Lafy;)V

    .line 1096
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1097
    return v0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2520
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2521
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2522
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2524
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    .line 2531
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:F

    :goto_0
    return v0

    .line 2527
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(II)V
    .locals 2

    .prologue
    .line 1895
    const/4 v0, 0x0

    .line 1896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {v1}, Lts;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1897
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {v0}, Lts;->b()Z

    move-result v0

    .line 1899
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v1}, Lts;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1900
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1902
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {v1}, Lts;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1903
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1905
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v1}, Lts;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1906
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1908
    :cond_3
    if-eqz v0, :cond_4

    .line 1909
    invoke-static {p0}, Lou;->d(Landroid/view/View;)V

    .line 1911
    :cond_4
    return-void
.end method

.method public static synthetic h(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5675
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 5676
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 5677
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5678
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v1, v0}, Laez;->d(Lafy;)V

    .line 5680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5681
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5682
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5683
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    invoke-interface {v0, p1}, Lafl;->b(Landroid/view/View;)V

    .line 5682
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5686
    :cond_1
    return-void
.end method

.method private i(II)V
    .locals 4

    .prologue
    .line 2573
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2574
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2575
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2576
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2581
    sparse-switch v2, :sswitch_data_0

    .line 2588
    invoke-static {p0}, Lou;->n(Landroid/view/View;)I

    move-result v1

    .line 2592
    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    .line 2599
    invoke-static {p0}, Lou;->o(Landroid/view/View;)I

    move-result v0

    .line 2603
    :sswitch_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2604
    return-void

    .line 2581
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2592
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic i(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->F()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5689
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 5690
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)V

    .line 5691
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5692
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v1, v0}, Laez;->c(Lafy;)V

    .line 5694
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5695
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5696
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5697
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    invoke-interface {v0, p1}, Lafl;->a(Landroid/view/View;)V

    .line 5696
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5701
    :cond_1
    return-void
.end method

.method public static synthetic j(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    return-void
.end method

.method private j(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2994
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2}, Lacz;->b()I

    move-result v3

    .line 2995
    if-nez v3, :cond_2

    .line 2996
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 3008
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 2998
    :goto_1
    if-ge v2, v3, :cond_1

    .line 2999
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v4, v2}, Lacz;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v4

    .line 3000
    invoke-virtual {v4}, Lafy;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2998
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3003
    :cond_4
    invoke-virtual {v4}, Lafy;->d()I

    move-result v4

    .line 3004
    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_3

    :cond_5
    move v0, v1

    .line 3005
    goto :goto_0
.end method

.method public static synthetic k(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic l(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public static synthetic m(Landroid/support/v7/widget/RecyclerView;)Lafz;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lafz;

    return-object v0
.end method

.method public static synthetic n(Landroid/support/v7/widget/RecyclerView;)Lafq;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Lafq;

    return-object v0
.end method

.method public static synthetic o(Landroid/support/v7/widget/RecyclerView;)Lafx;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Lafx;

    return-object v0
.end method

.method public static synthetic q()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ao:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static synthetic r()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 577
    new-instance v0, Lacz;

    new-instance v1, Laex;

    invoke-direct {v1, p0}, Laex;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lacz;-><init>(Ladb;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    .line 674
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne p1, v0, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1178
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1179
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1180
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 1182
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1412
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-eqz v0, :cond_2

    .line 1417
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1419
    invoke-static {}, Lkz;->a()V

    goto :goto_0

    .line 1422
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Labu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Labu;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1430
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->b()V

    .line 1433
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-nez v0, :cond_3

    .line 1434
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1435
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1441
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1442
    invoke-static {}, Lkz;->a()V

    goto :goto_0

    .line 1438
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->c()V

    goto :goto_1

    .line 1443
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1446
    invoke-static {}, Lkz;->a()V

    goto :goto_0
.end method

.method private u()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1454
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v1}, Lacz;->b()I

    move-result v2

    move v1, v0

    .line 1455
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1456
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3, v1}, Lacz;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 1457
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lafy;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    invoke-virtual {v3}, Lafy;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1461
    const/4 v0, 0x1

    .line 1464
    :cond_2
    return v0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Lafx;

    invoke-virtual {v0}, Lafx;->b()V

    .line 1825
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->w()V

    .line 1828
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1884
    const/4 v0, 0x0

    .line 1885
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {v0}, Lts;->b()Z

    move-result v0

    .line 1886
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1887
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1888
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v1}, Lts;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1889
    :cond_3
    if-eqz v0, :cond_4

    .line 1890
    invoke-static {p0}, Lou;->d(Landroid/view/View;)V

    .line 1892
    :cond_4
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2460
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2461
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2462
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 2465
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 2466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2467
    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 2637
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2638
    return-void
.end method


# virtual methods
.method a(Lafy;)J
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v0}, Laez;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lafy;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lafy;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public a(IZ)Lafy;
    .locals 4

    .prologue
    .line 3520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v2

    .line 3521
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 3522
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, v1}, Lacz;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 3523
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3524
    if-eqz p2, :cond_1

    .line 3525
    iget v3, v0, Lafy;->b:I

    if-ne v3, p1, :cond_2

    .line 3536
    :cond_0
    :goto_1
    return-object v0

    .line 3528
    :cond_1
    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3521
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3536
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Lafy;
    .locals 3

    .prologue
    .line 3399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3400
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3404
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 677
    new-instance v0, Labu;

    new-instance v1, Laey;

    invoke-direct {v1, p0}, Laey;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Labu;-><init>(Labv;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    .line 755
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 3598
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v1

    .line 3599
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3600
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3602
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1741
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v1, :cond_1

    .line 1742
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_0

    .line 1749
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v1}, Lafj;->c()Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    .line 1752
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v1}, Lafj;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1755
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    .line 1756
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ab:Lafx;

    invoke-virtual {v1, p1, v0}, Lafx;->b(II)V

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method public a(IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 3320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v2

    .line 3321
    add-int v3, p1, p2

    .line 3323
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, v1}, Lacz;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3325
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v4

    .line 3326
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lafy;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3323
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3329
    :cond_1
    iget v5, v4, Lafy;->b:I

    if-lt v5, p1, :cond_0

    iget v5, v4, Lafy;->b:I

    if-ge v5, v3, :cond_0

    .line 3332
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lafy;->b(I)V

    .line 3333
    invoke-virtual {v4, p3}, Lafy;->a(Ljava/lang/Object;)V

    .line 3335
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lafk;->c:Z

    goto :goto_1

    .line 3338
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1, p2}, Lafp;->c(II)V

    .line 3339
    return-void
.end method

.method public a(IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3285
    add-int v1, p1, p2

    .line 3286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v2

    .line 3287
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3288
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3, v0}, Lacz;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 3289
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lafy;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3290
    iget v4, v3, Lafy;->b:I

    if-lt v4, v1, :cond_1

    .line 3296
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lafy;->a(IZ)V

    .line 3297
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v3, v6}, Lafv;->a(Lafv;Z)Z

    .line 3287
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3298
    :cond_1
    iget v4, v3, Lafy;->b:I

    if-lt v4, p1, :cond_0

    .line 3303
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Lafy;->a(IIZ)V

    .line 3305
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v3, v6}, Lafv;->a(Lafv;Z)Z

    goto :goto_1

    .line 3309
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1, p2, p3}, Lafp;->b(IIZ)V

    .line 3310
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3311
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2114
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    if-nez p1, :cond_0

    .line 2116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1668
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-eqz v0, :cond_1

    .line 1670
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v0, :cond_0

    .line 1672
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1674
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 1675
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_1

    .line 1676
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1679
    :cond_1
    return-void
.end method

.method a(IILandroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1479
    .line 1482
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 1483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v0, :cond_c

    .line 1484
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1485
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 1486
    const-string v0, "RV Scroll"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 1487
    if-eqz p1, :cond_b

    .line 1488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p1, v1, v2}, Lafj;->a(ILafp;Lafv;)I

    move-result v2

    .line 1489
    sub-int v3, p1, v2

    .line 1491
    :goto_0
    if-eqz p2, :cond_a

    .line 1492
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p2, v1, v4}, Lafj;->b(ILafp;Lafv;)I

    move-result v0

    .line 1493
    sub-int v1, p2, v0

    .line 1495
    :goto_1
    invoke-static {}, Lkz;->a()V

    .line 1496
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->F()V

    .line 1497
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 1498
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    move v4, v1

    move v1, v2

    move v2, v0

    .line 1500
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1504
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1506
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 1507
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v7

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 1508
    if-eqz p3, :cond_1

    .line 1509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1511
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 1512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v3, v0, v7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    .line 1519
    :cond_2
    :goto_3
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 1520
    :cond_3
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 1522
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1523
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1525
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    return v6

    .line 1513
    :cond_8
    invoke-static {p0}, Lou;->a(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    .line 1514
    if-eqz p3, :cond_9

    .line 1515
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/v7/widget/RecyclerView;->a(FFFF)V

    .line 1517
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    goto :goto_3

    :cond_a
    move v0, v6

    move v1, v6

    goto/16 :goto_1

    :cond_b
    move v2, v6

    move v3, v6

    goto/16 :goto_0

    :cond_c
    move v2, v6

    move v1, v6

    move v4, v6

    move v3, v6

    goto/16 :goto_2
.end method

.method a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2699
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2701
    if-eqz p1, :cond_2

    .line 2702
    invoke-static {p1}, Lrf;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    .line 2704
    :goto_0
    if-nez v1, :cond_1

    .line 2707
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    .line 2708
    const/4 v0, 0x1

    .line 2710
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0, p1, p2, p3}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2047
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2049
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-nez v0, :cond_0

    .line 1660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 1661
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 1662
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1665
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 3636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v1

    .line 3637
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3638
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3640
    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1774
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_1

    .line 1775
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_0
    :goto_0
    return v1

    .line 1779
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v0

    .line 1784
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v3}, Lafj;->d()Z

    move-result v3

    .line 1786
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-ge v4, v5, :cond_3

    :cond_2
    move p1, v1

    .line 1789
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-ge v4, v5, :cond_5

    :cond_4
    move p2, v1

    .line 1792
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1797
    :cond_6
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1798
    if-nez v0, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    move v0, v2

    .line 1799
    :goto_1
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1801
    if-eqz v0, :cond_0

    .line 1802
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1803
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1804
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ab:Lafx;

    invoke-virtual {v3, v0, v1}, Lafx;->a(II)V

    move v1, v2

    .line 1805
    goto :goto_0

    :cond_8
    move v0, v1

    .line 1798
    goto :goto_1
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3445
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 3446
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafy;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1816
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1817
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 1818
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 3721
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 1914
    if-gez p1, :cond_4

    .line 1915
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lts;->a(I)Z

    .line 1922
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1923
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1924
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Lts;->a(I)Z

    .line 1930
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1931
    :cond_2
    invoke-static {p0}, Lou;->d(Landroid/view/View;)V

    .line 1933
    :cond_3
    return-void

    .line 1917
    :cond_4
    if-lez p1, :cond_0

    .line 1918
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1919
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v0, p1}, Lts;->a(I)Z

    goto :goto_0

    .line 1925
    :cond_5
    if-lez p2, :cond_1

    .line 1926
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1927
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v0, p2}, Lts;->a(I)Z

    goto :goto_1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 3168
    instance-of v0, p1, Lafk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    check-cast p1, Lafk;

    invoke-virtual {v0, p1}, Lafj;->a(Lafk;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->d(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->b(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->f(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->e(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->c(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1}, Lafj;->g(Lafv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 1936
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    if-eqz v0, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1939
    :cond_0
    new-instance v0, Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    .line 1940
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_1

    .line 1941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0

    .line 1944
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 3726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 3727
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p1}, Lafj;->i(I)V

    .line 3732
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 3735
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Lafn;

    if-eqz v0, :cond_1

    .line 3736
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Lafn;

    invoke-virtual {v0, p0, p1}, Lafn;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3738
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 3740
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafn;

    invoke-virtual {v0, p0, p1}, Lafn;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3739
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3743
    :cond_2
    return-void
.end method

.method public d(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v6

    .line 3235
    if-ge p1, p2, :cond_1

    .line 3238
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_0
    move v4, v5

    .line 3245
    :goto_1
    if-ge v4, v6, :cond_4

    .line 3246
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v7, v4}, Lacz;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v7

    .line 3247
    if-eqz v7, :cond_0

    iget v8, v7, Lafy;->b:I

    if-lt v8, v3, :cond_0

    iget v8, v7, Lafy;->b:I

    if-le v8, v2, :cond_2

    .line 3245
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, p1

    move v3, p2

    .line 3242
    goto :goto_0

    .line 3254
    :cond_2
    iget v8, v7, Lafy;->b:I

    if-ne v8, p1, :cond_3

    .line 3255
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Lafy;->a(IZ)V

    .line 3260
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v7, v1}, Lafv;->a(Lafv;Z)Z

    goto :goto_2

    .line 3257
    :cond_3
    invoke-virtual {v7, v0, v5}, Lafy;->a(IZ)V

    goto :goto_3

    .line 3262
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1, p2}, Lafp;->a(II)V

    .line 3263
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3264
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3615
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 8670
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0, p1, p2, p3}, Loj;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 8675
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0, p1, p2}, Loj;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 8665
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0, p1, p2, p3, p4}, Loj;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 8659
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Loj;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1055
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1047
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3097
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3099
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3100
    :goto_0
    if-ge v3, v4, :cond_0

    .line 3101
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafi;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p1, p0, v5}, Lafi;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lafv;)V

    .line 3100
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3106
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {v0}, Lts;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3108
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 3109
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3110
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    invoke-virtual {v0, p1}, Lts;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 3112
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3114
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {v3}, Lts;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3116
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v3, :cond_1

    .line 3117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3119
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {v3, p1}, Lts;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 3120
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3122
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v3}, Lts;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3124
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3125
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3126
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3127
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3128
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {v3, p1}, Lts;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 3129
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3131
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v3}, Lts;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3133
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3134
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v4, :cond_c

    .line 3135
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3139
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {v4, p1}, Lts;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 3140
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3146
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v1}, Lafd;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3151
    :goto_8
    if-eqz v2, :cond_6

    .line 3152
    invoke-static {p0}, Lou;->d(Landroid/view/View;)V

    .line 3154
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 3108
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 3111
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 3119
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 3125
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 3128
    goto :goto_6

    .line 3137
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 3588
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method e()V
    .locals 4

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    if-eqz v0, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1952
    :cond_0
    new-instance v0, Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    .line 1953
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0

    .line 1957
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0
.end method

.method public e(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3267
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v2

    move v0, v1

    .line 3268
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3269
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3, v0}, Lacz;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 3270
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lafy;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lafy;->b:I

    if-lt v4, p1, :cond_0

    .line 3275
    invoke-virtual {v3, p2, v1}, Lafy;->a(IZ)V

    .line 3276
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lafv;->a(Lafv;Z)Z

    .line 3268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3279
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1, p2}, Lafp;->b(II)V

    .line 3280
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3281
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3627
    return-void
.end method

.method public f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3643
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 3644
    iget-boolean v1, v0, Lafk;->c:Z

    if-nez v1, :cond_0

    .line 3645
    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 3660
    :goto_0
    return-object v0

    .line 3648
    :cond_0
    iget-object v2, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 3649
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3650
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 3651
    :goto_1
    if-ge v3, v5, :cond_1

    .line 3652
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3653
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafi;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v1, v6, p1, p0, v7}, Lafi;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lafv;)V

    .line 3654
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 3655
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3656
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 3657
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 3651
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 3659
    :cond_1
    iput-boolean v4, v0, Lafk;->c:Z

    move-object v0, v2

    .line 3660
    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    if-eqz v0, :cond_0

    .line 1973
    :goto_0
    return-void

    .line 1965
    :cond_0
    new-instance v0, Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    .line 1966
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_1

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0

    .line 1970
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0
.end method

.method public f(II)V
    .locals 0

    .prologue
    .line 3685
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p1, p2}, Lafj;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1997
    if-eqz v0, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return-object v0

    .line 2000
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2001
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2002
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_2

    .line 2004
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2005
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p1, p2, v1, v2}, Lafj;->a(Landroid/view/View;ILafp;Lafv;)Landroid/view/View;

    move-result-object v0

    .line 2006
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2008
    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 1976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    if-eqz v0, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1979
    :cond_0
    new-instance v0, Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    .line 1980
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0

    .line 1984
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lts;->a(II)V

    goto :goto_0
.end method

.method public g(II)V
    .locals 2

    .prologue
    .line 3690
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 3691
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 3692
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3695
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 3699
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Lafn;

    if-eqz v0, :cond_0

    .line 3700
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Lafn;

    invoke-virtual {v0, p0, p1, p2}, Lafn;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3702
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3703
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafn;

    invoke-virtual {v0, p0, p1, p2}, Lafn;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3703
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3707
    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3173
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_0

    .line 3174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3176
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->a()Lafk;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_0

    .line 3182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lafj;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lafk;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3189
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_0

    .line 3190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3192
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p1}, Lafj;->a(Landroid/view/ViewGroup$LayoutParams;)Lafk;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Laez;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->n()I

    move-result v0

    .line 934
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 10247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lafc;

    if-nez v0, :cond_0

    .line 10248
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 10250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lafc;

    invoke-interface {v0, p1, p2}, Lafc;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Lafz;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lafz;

    return-object v0
.end method

.method public getItemAnimator()Lafd;
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    return-object v0
.end method

.method public getLayoutManager()Lafj;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1846
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1836
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    return v0
.end method

.method public getRecycledViewPool()Lafo;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->f()Lafo;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Lts;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lts;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Lts;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lts;

    .line 1990
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 8653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0}, Loj;->b()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 2653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2085
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 8638
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0}, Loj;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 2687
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2807
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-nez v0, :cond_1

    .line 2808
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_0
    :goto_0
    return-void

    .line 2811
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_2

    .line 2812
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2815
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0}, Lahi;->a()V

    .line 2816
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2817
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 2819
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E()V

    .line 2820
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->b(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lafv;->e(Lafv;Z)Z

    .line 2821
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 2822
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v3}, Lafv;->a(Lafv;)Z

    move-result v3

    invoke-static {v0, v3}, Lafv;->b(Lafv;Z)Z

    .line 2823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v3}, Laez;->a()I

    move-result v3

    iput v3, v0, Lafv;->a:I

    .line 2824
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 2826
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->b(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2828
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v3

    move v0, v2

    .line 2829
    :goto_2
    if-ge v0, v3, :cond_6

    .line 2830
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v4, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v4

    .line 2831
    invoke-virtual {v4}, Lafy;->c()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lafy;->n()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v5}, Laez;->b()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2829
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 2820
    goto :goto_1

    .line 2834
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v4}, Lafd;->d(Lafy;)I

    move-result v7

    invoke-virtual {v4}, Lafy;->u()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v4, v7, v8}, Lafd;->a(Lafv;Lafy;ILjava/util/List;)Lafg;

    move-result-object v5

    .line 2838
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v6, v4, v5}, Lahi;->a(Lafy;Lafg;)V

    .line 2839
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v5}, Lafv;->c(Lafv;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lafy;->x()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lafy;->q()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lafy;->c()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lafy;->n()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2841
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;)J

    move-result-wide v6

    .line 2849
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v5, v6, v7, v4}, Lahi;->a(JLafy;)V

    goto :goto_3

    .line 2853
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->a(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2860
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 2861
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->d(Lafv;)Z

    move-result v0

    .line 2862
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v3, v2}, Lafv;->a(Lafv;Z)Z

    .line 2864
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v3, v4, v5}, Lafj;->a(Lafp;Lafv;)V

    .line 2865
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v3, v0}, Lafv;->a(Lafv;Z)Z

    move v0, v2

    .line 2867
    :goto_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3}, Lacz;->b()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 2868
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v3

    .line 2869
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v4

    .line 2870
    invoke-virtual {v4}, Lafy;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2867
    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2873
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v3, v4}, Lahi;->b(Lafy;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2874
    invoke-static {v4}, Lafd;->d(Lafy;)I

    move-result v3

    .line 2875
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Lafy;->a(I)Z

    move-result v5

    .line 2877
    if-nez v5, :cond_9

    .line 2878
    or-int/lit16 v3, v3, 0x1000

    .line 2880
    :cond_9
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v4}, Lafy;->u()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v3, v8}, Lafd;->a(Lafv;Lafy;ILjava/util/List;)Lafg;

    move-result-object v3

    .line 2882
    if-eqz v5, :cond_a

    .line 2883
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;Lafg;)V

    goto :goto_5

    .line 2885
    :cond_a
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v5, v4, v3}, Lahi;->b(Lafy;Lafg;)V

    goto :goto_5

    .line 2890
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 2891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->c()V

    .line 2895
    :goto_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v3}, Laez;->a()I

    move-result v3

    iput v3, v0, Lafv;->a:I

    .line 2896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->b(Lafv;I)I

    .line 2899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->b(Lafv;Z)Z

    .line 2900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v3, v4}, Lafj;->a(Lafp;Lafv;)V

    .line 2902
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->a(Lafv;Z)Z

    .line 2903
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 2906
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->b(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    invoke-static {v3, v0}, Lafv;->c(Lafv;Z)Z

    .line 2908
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->b(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2910
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v3

    move v0, v2

    .line 2911
    :goto_8
    if-ge v0, v3, :cond_10

    .line 2912
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v4, v0}, Lacz;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v4

    .line 2913
    invoke-virtual {v4}, Lafy;->c()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2911
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2893
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    goto :goto_6

    :cond_d
    move v0, v2

    .line 2906
    goto :goto_7

    .line 2916
    :cond_e
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;)J

    move-result-wide v6

    .line 2917
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v5, v8, v4}, Lafd;->a(Lafv;Lafy;)Lafg;

    move-result-object v5

    .line 2919
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v8, v6, v7}, Lahi;->a(J)Lafy;

    move-result-object v6

    .line 2920
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lafy;->c()Z

    move-result v7

    if-nez v7, :cond_f

    .line 2922
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v7, v6}, Lahi;->a(Lafy;)Lafg;

    move-result-object v7

    .line 2924
    invoke-direct {p0, v6, v4, v7, v5}, Landroid/support/v7/widget/RecyclerView;->a(Lafy;Lafy;Lafg;Lafg;)V

    goto :goto_9

    .line 2926
    :cond_f
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v6, v4, v5}, Lahi;->c(Lafy;Lafg;)V

    goto :goto_9

    .line 2931
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ap:Lahk;

    invoke-virtual {v0, v3}, Lahi;->a(Lahk;)V

    .line 2933
    :cond_11
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, v3}, Lafj;->b(Lafp;)V

    .line 2935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget v3, v3, Lafv;->a:I

    invoke-static {v0, v3}, Lafv;->c(Lafv;I)I

    .line 2936
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    .line 2937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->c(Lafv;Z)Z

    .line 2939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v2}, Lafv;->d(Lafv;Z)Z

    .line 2940
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()V

    .line 2941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-static {v0, v2}, Lafj;->a(Lafj;Z)Z

    .line 2942
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2945
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0}, Lahi;->a()V

    .line 2946
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v1, v3, v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->j(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2947
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    goto/16 :goto_0
.end method

.method l()V
    .locals 4

    .prologue
    .line 3087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v2

    .line 3088
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, v1}, Lacz;->c(I)Landroid/view/View;

    move-result-object v0

    .line 3090
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lafk;->c:Z

    .line 3088
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3092
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->i()V

    .line 3093
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    .line 3208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v1

    .line 3209
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3210
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v2

    .line 3215
    invoke-virtual {v2}, Lafy;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3216
    invoke-virtual {v2}, Lafy;->b()V

    .line 3209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3219
    :cond_1
    return-void
.end method

.method n()V
    .locals 4

    .prologue
    .line 3222
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v1

    .line 3223
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3224
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v2

    .line 3225
    invoke-virtual {v2}, Lafy;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3226
    invoke-virtual {v2}, Lafy;->a()V

    .line 3223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3229
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->h()V

    .line 3230
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 3365
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()I

    move-result v1

    .line 3366
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3367
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v2, v0}, Lacz;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v2

    .line 3368
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lafy;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3369
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lafy;->b(I)V

    .line 3366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3372
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 3373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->g()V

    .line 3374
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2053
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2054
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2055
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2056
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 2057
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0}, Lafj;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 2060
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->af:Z

    .line 2061
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2065
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0}, Lafd;->c()V

    .line 2069
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 2071
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 2072
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_1

    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p0, v1}, Lafj;->b(Landroid/support/v7/widget/RecyclerView;Lafp;)V

    .line 2076
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->an:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2077
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0}, Lahi;->b()V

    .line 2078
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 3158
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafi;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p1, p0, v3}, Lafi;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lafv;)V

    .line 3161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3164
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2482
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_1

    .line 2513
    :cond_0
    :goto_0
    return v4

    .line 2485
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 2488
    invoke-static {p1}, Lnz;->d(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2491
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2494
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lnz;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    neg-float v0, v0

    .line 2499
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v2}, Lafj;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2500
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lnz;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2506
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 2507
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2508
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2497
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2503
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2202
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_1

    .line 2301
    :cond_0
    :goto_0
    return v3

    .line 2207
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2208
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    move v3, v2

    .line 2209
    goto :goto_0

    .line 2212
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v0

    .line 2217
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v4}, Lafj;->d()Z

    move-result v4

    .line 2219
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    .line 2220
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    .line 2222
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2224
    invoke-static {p1}, Lnz;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2225
    invoke-static {p1}, Lnz;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 2227
    packed-switch v5, :pswitch_data_0

    .line 2301
    :cond_4
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne v0, v2, :cond_c

    :goto_2
    move v3, v2

    goto :goto_0

    .line 2229
    :pswitch_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v1, :cond_5

    .line 2230
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 2232
    :cond_5
    invoke-static {p1, v3}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2236
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    .line 2237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2242
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aput v3, v5, v2

    aput v3, v1, v3

    .line 2245
    if-eqz v0, :cond_e

    move v0, v2

    .line 2248
    :goto_3
    if-eqz v4, :cond_7

    .line 2249
    or-int/lit8 v0, v0, 0x2

    .line 2251
    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2255
    :pswitch_2
    invoke-static {p1, v6}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2256
    invoke-static {p1, v6}, Lnz;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2257
    invoke-static {p1, v6}, Lnz;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    goto :goto_1

    .line 2261
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {p1, v5}, Lnz;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2262
    if-gez v5, :cond_8

    .line 2263
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2268
    :cond_8
    invoke-static {p1, v5}, Lnz;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2269
    invoke-static {p1, v5}, Lnz;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 2270
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-eq v7, v2, :cond_4

    .line 2271
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    sub-int/2addr v6, v7

    .line 2272
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    sub-int/2addr v5, v7

    .line 2274
    if-eqz v0, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v0, v7, :cond_d

    .line 2275
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-gez v6, :cond_a

    move v0, v1

    :goto_4
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    move v0, v2

    .line 2278
    :goto_5
    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v4, v6, :cond_9

    .line 2279
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-gez v5, :cond_b

    :goto_6
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    move v0, v2

    .line 2282
    :cond_9
    if-eqz v0, :cond_4

    .line 2283
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 2275
    goto :goto_4

    :cond_b
    move v1, v2

    .line 2279
    goto :goto_6

    .line 2289
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2293
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2298
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    goto/16 :goto_1

    :cond_c
    move v2, v3

    .line 2301
    goto/16 :goto_2

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    move v0, v3

    goto/16 :goto_3

    .line 2227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 3069
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 3070
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Lkz;->a(Ljava/lang/String;)V

    .line 3071
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 3072
    invoke-static {}, Lkz;->a()V

    .line 3073
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 3074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 3075
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2536
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_0

    .line 2537
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2538
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E()V

    .line 2540
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->a(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lafv;->b(Lafv;Z)Z

    .line 2551
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 2552
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2555
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v0, :cond_2

    .line 2556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    invoke-virtual {v1}, Laez;->a()I

    move-result v1

    iput v1, v0, Lafv;->a:I

    .line 2560
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v0, :cond_3

    .line 2561
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 2566
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v3}, Lafv;->b(Lafv;Z)Z

    .line 2567
    return-void

    .line 2548
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->e()V

    .line 2549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, v3}, Lafv;->b(Lafv;Z)Z

    goto :goto_0

    .line 2558
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    iput v3, v0, Lafv;->a:I

    goto :goto_1

    .line 2563
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, v1, v2, p1, p2}, Lafj;->a(Lafp;Lafv;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1034
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lafj;->a(Landroid/os/Parcelable;)V

    .line 1039
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1021
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1029
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v1}, Lafj;->b()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 1026
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 2608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2609
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2610
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 2612
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2316
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v0, :cond_1

    .line 2453
    :cond_0
    :goto_0
    return v2

    .line 2319
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2320
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    move v2, v3

    .line 2321
    goto :goto_0

    .line 2324
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->c()Z

    move-result v5

    .line 2329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0}, Lafj;->d()Z

    move-result v6

    .line 2331
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2332
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    .line 2336
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2337
    invoke-static {p1}, Lnz;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2338
    invoke-static {p1}, Lnz;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2340
    if-nez v0, :cond_4

    .line 2341
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aput v2, v9, v3

    aput v2, v8, v2

    .line 2343
    :cond_4
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2345
    packed-switch v0, :pswitch_data_0

    .line 2448
    :cond_5
    :goto_1
    :pswitch_0
    if-nez v2, :cond_6

    .line 2449
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2451
    :cond_6
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    move v2, v3

    .line 2453
    goto :goto_0

    .line 2347
    :pswitch_1
    invoke-static {p1, v2}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 2352
    if-eqz v5, :cond_16

    move v0, v3

    .line 2355
    :goto_2
    if-eqz v6, :cond_7

    .line 2356
    or-int/lit8 v0, v0, 0x2

    .line 2358
    :cond_7
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2362
    :pswitch_2
    invoke-static {p1, v4}, Lnz;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2363
    invoke-static {p1, v4}, Lnz;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 2364
    invoke-static {p1, v4}, Lnz;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    goto :goto_1

    .line 2368
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {p1, v0}, Lnz;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2369
    if-gez v0, :cond_8

    .line 2370
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2375
    :cond_8
    invoke-static {p1, v0}, Lnz;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    .line 2376
    invoke-static {p1, v0}, Lnz;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    .line 2377
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    sub-int v1, v0, v8

    .line 2378
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    sub-int/2addr v0, v9

    .line 2380
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    invoke-virtual {p0, v1, v0, v4, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2381
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    aget v4, v4, v2

    sub-int/2addr v1, v4

    .line 2382
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->al:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    .line 2383
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2385
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v10, v4, v2

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v11, v11, v2

    add-int/2addr v10, v11

    aput v10, v4, v2

    .line 2386
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->am:[I

    aget v10, v4, v3

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v4, v3

    .line 2389
    :cond_9
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-eq v4, v3, :cond_b

    .line 2391
    if-eqz v5, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v4, v10, :cond_15

    .line 2392
    if-lez v1, :cond_c

    .line 2393
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    sub-int/2addr v1, v4

    :goto_3
    move v4, v3

    .line 2399
    :goto_4
    if-eqz v6, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    if-le v10, v11, :cond_a

    .line 2400
    if-lez v0, :cond_d

    .line 2401
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    sub-int/2addr v0, v4

    :goto_5
    move v4, v3

    .line 2407
    :cond_a
    if-eqz v4, :cond_b

    .line 2408
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2412
    :cond_b
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-ne v4, v3, :cond_5

    .line 2413
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v2

    sub-int v4, v8, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 2414
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ak:[I

    aget v4, v4, v3

    sub-int v4, v9, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->T:I

    .line 2416
    if-eqz v5, :cond_e

    :goto_6
    if-eqz v6, :cond_f

    :goto_7
    invoke-virtual {p0, v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2420
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2395
    :cond_c
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    add-int/2addr v1, v4

    goto :goto_3

    .line 2403
    :cond_d
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    add-int/2addr v0, v4

    goto :goto_5

    :cond_e
    move v1, v2

    .line 2416
    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_7

    .line 2426
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2430
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->W:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2433
    if-eqz v5, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {v0, v4}, Lop;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    .line 2435
    :goto_8
    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    invoke-static {v0, v5}, Lop;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 2437
    :goto_9
    cmpl-float v5, v4, v1

    if-nez v5, :cond_10

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_11

    :cond_10
    float-to-int v1, v4

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2438
    :cond_11
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2440
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    move v2, v3

    .line 2441
    goto/16 :goto_1

    :cond_13
    move v4, v1

    .line 2433
    goto :goto_8

    :cond_14
    move v0, v1

    .line 2435
    goto :goto_9

    .line 2444
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    goto/16 :goto_1

    :cond_15
    move v4, v2

    goto/16 :goto_4

    :cond_16
    move v0, v2

    goto/16 :goto_2

    .line 2345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 3759
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0}, Labu;->d()Z

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

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 3013
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 3014
    if-eqz v0, :cond_0

    .line 3015
    invoke-virtual {v0}, Lafy;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3016
    invoke-virtual {v0}, Lafy;->m()V

    .line 3022
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    .line 3023
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3024
    return-void

    .line 3017
    :cond_1
    invoke-virtual {v0}, Lafy;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3018
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2013
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0, p0, v2, p1, p2}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;Lafv;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2014
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2019
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2020
    instance-of v2, v0, Lafk;

    if-eqz v2, :cond_0

    .line 2022
    check-cast v0, Lafk;

    .line 2023
    iget-boolean v2, v0, Lafk;->c:Z

    if-nez v2, :cond_0

    .line 2024
    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 2025
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2026
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2027
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2028
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2032
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2034
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2036
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2037
    return-void

    :cond_2
    move v0, v1

    .line 2034
    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0, p1, p2, p3}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .prologue
    .line 2306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2307
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafm;

    .line 2309
    invoke-interface {v0, p1}, Lafm;->a(Z)V

    .line 2307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2311
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2312
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3079
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_0

    .line 3080
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3084
    :goto_0
    return-void

    .line 3082
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1388
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-nez v1, :cond_1

    .line 1389
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v1, :cond_0

    .line 1396
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v1}, Lafj;->c()Z

    move-result v1

    .line 1397
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v2}, Lafj;->d()Z

    move-result v2

    .line 1398
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 1399
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 1382
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2715
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2719
    :goto_0
    return-void

    .line 2718
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lafz;)V
    .locals 1

    .prologue
    .line 506
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lafz;

    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lafz;

    invoke-static {p0, v0}, Lou;->a(Landroid/view/View;Lmg;)V

    .line 508
    return-void
.end method

.method public setAdapter(Laez;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 847
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Laez;ZZ)V

    .line 848
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 849
    return-void
.end method

.method public setChildDrawingOrderCallback(Lafc;)V
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lafc;

    if-ne p1, v0, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lafc;

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lafc;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-eq p1, v0, :cond_0

    .line 779
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 781
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Z

    .line 782
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 783
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 786
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 765
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 766
    return-void
.end method

.method public setItemAnimator(Lafd;)V
    .locals 2

    .prologue
    .line 2626
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0}, Lafd;->c()V

    .line 2628
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafd;->a(Laff;)V

    .line 2630
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    .line 2631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v0, :cond_1

    .line 2632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ae:Laff;

    invoke-virtual {v0, v1}, Lafd;->a(Laff;)V

    .line 2634
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1}, Lafp;->a(I)V

    .line 1158
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1704
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eq p1, v0, :cond_1

    .line 1705
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 1706
    if-nez p1, :cond_2

    .line 1707
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1708
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Laez;

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1711
    :cond_0
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1722
    :cond_1
    :goto_0
    return-void

    .line 1713
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1714
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1716
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1717
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1719
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    goto :goto_0
.end method

.method public setLayoutManager(Lafj;)V
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-ne p1, v0, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    if-eqz v0, :cond_2

    .line 997
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p0, v1}, Lafj;->b(Landroid/support/v7/widget/RecyclerView;Lafp;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1002
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0}, Lafp;->a()V

    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->a()V

    .line 1004
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    .line 1005
    if-eqz p1, :cond_4

    .line 1006
    iget-object v0, p1, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1007
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1011
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_4

    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Lafj;

    invoke-virtual {v0, p0}, Lafj;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 1015
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 8633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0, p1}, Loj;->a(Z)V

    .line 8634
    return-void
.end method

.method public setOnScrollListener(Lafn;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1284
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Lafn;

    .line 1285
    return-void
.end method

.method public setRecycledViewPool(Lafo;)V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1}, Lafp;->a(Lafo;)V

    .line 1132
    return-void
.end method

.method public setRecyclerListener(Lafq;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Lafq;

    .line 919
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 799
    packed-switch p1, :pswitch_data_0

    .line 801
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    .line 812
    :goto_0
    return-void

    .line 809
    :pswitch_1
    invoke-static {v0}, Lpu;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->U:I

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Lafw;)V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1}, Lafp;->a(Lafw;)V

    .line 1143
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 8643
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0, p1}, Loj;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 8648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Loj;

    invoke-virtual {v0}, Loj;->c()V

    .line 8649
    return-void
.end method
