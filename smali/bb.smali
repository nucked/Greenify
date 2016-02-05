.class public Lbb;
.super Lav;
.source "SourceFile"


# instance fields
.field private j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lbn;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lav;-><init>(Landroid/view/View;Lbn;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lbb;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lbb;->j:Z

    return p1
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lbb;->d:Lbm;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lbb;->d:Lbm;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lbm;->a(F)V

    .line 133
    :cond_0
    iget-object v0, p0, Lbb;->c:Lag;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lbb;->c:Lag;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lag;->b(F)V

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lbg;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Lbb;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1}, Lbg;->b()V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-static {v0}, Lou;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    :cond_3
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Lbg;->b()V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbc;

    invoke-direct {v1, p0, p1}, Lbc;-><init>(Lbb;Lbg;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method b(Lbg;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-static {v0}, Lou;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 96
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 97
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbd;

    invoke-direct {v1, p0, p1}, Lbd;-><init>(Lbb;Lbg;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Lbg;->a()V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbb;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-direct {p0, v0}, Lbb;->c(F)V

    .line 41
    return-void
.end method
