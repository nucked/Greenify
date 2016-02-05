.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

.field private e:I

.field private f:Lca;

.field private final g:Lcg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lbo;

    invoke-direct {v2}, Lbo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Lbr;

    invoke-direct {v0, p0}, Lbr;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    .line 179
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Lco;->a(Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    sget v1, Lv;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 187
    return-void
.end method

.method public static a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/support/design/widget/Snackbar;

    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 211
    invoke-virtual {v0, p2}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    .line 212
    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 238
    move-object v1, v2

    move-object v0, p0

    .line 240
    :cond_0
    instance-of v3, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 242
    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    :goto_0
    return-object v0

    .line 243
    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    .line 247
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 250
    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    :cond_3
    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 257
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    .line 259
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 262
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 257
    goto :goto_1
.end method

.method public static synthetic a(Landroid/support/design/widget/Snackbar;)Lcg;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    return-object v0
.end method

.method public static synthetic a(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->c(I)V

    return-void
.end method

.method public static synthetic b(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->g()V

    return-void
.end method

.method public static synthetic b(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->e(I)V

    return-void
.end method

.method public static synthetic c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    invoke-virtual {v0, v1, p1}, Lce;->a(Lcg;I)V

    .line 395
    return-void
.end method

.method public static synthetic d(Landroid/support/design/widget/Snackbar;)Lca;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Lca;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 554
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lqj;->c(F)Lqj;

    move-result-object v0

    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lqj;->a(Landroid/view/animation/Interpolator;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    new-instance v1, Lby;

    invoke-direct {v1, p0, p1}, Lby;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lq;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 572
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 574
    new-instance v1, Lbp;

    invoke-direct {v1, p0, p1}, Lbp;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 586
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    invoke-virtual {v0, v1}, Lce;->a(Lcg;)V

    .line 602
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Lca;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Lca;

    invoke-virtual {v0, p0, p1}, Lca;->a(Landroid/support/design/widget/Snackbar;I)V

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 607
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 608
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :cond_1
    return-void
.end method

.method public static synthetic f()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lou;->b(Landroid/view/View;F)V

    .line 510
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqj;->c(F)Lqj;

    move-result-object v0

    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lqj;->a(Landroid/view/animation/Interpolator;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    new-instance v1, Lbw;

    invoke-direct {v1, p0}, Lbw;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lq;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 532
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    new-instance v1, Lbx;

    invoke-direct {v1, p0}, Lbx;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 618
    instance-of v2, v0, Lan;

    if-eqz v2, :cond_1

    .line 619
    check-cast v0, Lan;

    .line 620
    invoke-virtual {v0}, Lan;->b()Lak;

    move-result-object v0

    .line 622
    instance-of v2, v0, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v2, :cond_1

    .line 623
    check-cast v0, Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 627
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 623
    goto :goto_0

    :cond_1
    move v0, v1

    .line 627
    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/support/design/widget/Snackbar;
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Landroid/support/design/widget/Snackbar;->e:I

    .line 358
    return-object p0
.end method

.method public a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :goto_0
    return-object p0

    .line 290
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v1, Lbq;

    invoke-direct {v1, p0, p2}, Lbq;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/Snackbar;->e:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    invoke-virtual {v0, v1, v2}, Lce;->a(ILcg;)V

    .line 384
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->e(I)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->d(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/design/widget/Snackbar;->c(I)V

    .line 391
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Lcg;

    invoke-virtual {v0, v1}, Lce;->e(Lcg;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 437
    instance-of v1, v0, Lan;

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Lbz;

    invoke-direct {v1, p0}, Lbz;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 441
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lbz;->a(F)V

    .line 442
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lbz;->b(F)V

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbz;->a(I)V

    .line 444
    new-instance v2, Lbs;

    invoke-direct {v2, p0}, Lbs;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Lbz;->a(Lcm;)V

    .line 465
    check-cast v0, Lan;

    invoke-virtual {v0, v1}, Lan;->a(Lak;)V

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Lbt;

    invoke-direct {v1, p0}, Lbt;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnAttachStateChangeListener(Lcb;)V

    .line 492
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Lou;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->g()V

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Lbv;

    invoke-direct {v1, p0}, Lbv;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Lcc;)V

    goto :goto_0
.end method
