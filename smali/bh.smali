.class public Lbh;
.super Lbb;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private j:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lbn;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lbb;-><init>(Landroid/view/View;Lbn;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lbh;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lbh;->j:Landroid/view/animation/Interpolator;

    .line 47
    :cond_0
    return-void
.end method

.method private a(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbh;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    return-object p1
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbh;->h:Landroid/view/View;

    invoke-static {v0, p1}, Lou;->f(Landroid/view/View;F)V

    .line 87
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lbh;->b:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lbh;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lbb;->a(I)V

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0}, Lbh;->g()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Ljv;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbh;->a:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lbh;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lbh;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    if-lez p4, :cond_1

    .line 61
    invoke-virtual {p0, p4, p1}, Lbh;->a(ILandroid/content/res/ColorStateList;)Lag;

    move-result-object v0

    iput-object v0, p0, Lbh;->c:Lag;

    .line 62
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lbh;->c:Lag;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lbh;->a:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 68
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lbh;->b:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lbh;->i:Lbn;

    iget-object v1, p0, Lbh;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lbn;->a(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lbh;->i:Lbn;

    invoke-interface {v0, v4, v4, v4, v4}, Lbn;->a(IIII)V

    .line 73
    return-void

    .line 64
    :cond_1
    iput-object v5, p0, Lbh;->c:Lag;

    .line 65
    iget-object v0, p0, Lbh;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method a([I)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method b(F)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 91
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 94
    sget-object v1, Lbh;->e:[I

    iget-object v2, p0, Lbh;->h:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lbh;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 96
    sget-object v1, Lbh;->f:[I

    iget-object v2, p0, Lbh;->h:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lbh;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 99
    sget-object v1, Lbh;->g:[I

    iget-object v2, p0, Lbh;->h:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lbh;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 102
    iget-object v1, p0, Lbh;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 103
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method f()Lag;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    return-object v0
.end method
