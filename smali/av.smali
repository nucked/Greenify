.class public Lav;
.super Lbe;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Lag;

.field d:Lbm;

.field private j:F

.field private k:F

.field private l:I

.field private m:Lci;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lbn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lbe;-><init>(Landroid/view/View;Lbn;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lav;->l:I

    .line 56
    new-instance v0, Lci;

    invoke-direct {v0}, Lci;-><init>()V

    iput-object v0, p0, Lav;->m:Lci;

    .line 57
    iget-object v0, p0, Lav;->m:Lci;

    invoke-virtual {v0, p1}, Lci;->a(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lav;->m:Lci;

    sget-object v1, Lav;->e:[I

    new-instance v2, Laz;

    invoke-direct {v2, p0, v3}, Laz;-><init>(Lav;Law;)V

    invoke-direct {p0, v2}, Lav;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci;->a([ILandroid/view/animation/Animation;)V

    .line 62
    iget-object v0, p0, Lav;->m:Lci;

    sget-object v1, Lav;->f:[I

    new-instance v2, Laz;

    invoke-direct {v2, p0, v3}, Laz;-><init>(Lav;Law;)V

    invoke-direct {p0, v2}, Lav;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci;->a([ILandroid/view/animation/Animation;)V

    .line 65
    iget-object v0, p0, Lav;->m:Lci;

    sget-object v1, Lav;->g:[I

    new-instance v2, Lba;

    invoke-direct {v2, p0, v3}, Lba;-><init>(Lav;Law;)V

    invoke-direct {p0, v2}, Lav;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci;->a([ILandroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lav;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lav;->j:F

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    iget v0, p0, Lav;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 225
    return-object p1
.end method

.method static synthetic a(Lav;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lav;->n:Z

    return p1
.end method

.method static synthetic b(Lav;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lav;->k:F

    return v0
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 266
    new-array v0, v1, [[I

    .line 267
    new-array v1, v1, [I

    .line 270
    sget-object v2, Lav;->f:[I

    aput-object v2, v0, v4

    .line 271
    aput p0, v1, v4

    .line 272
    const/4 v2, 0x1

    .line 274
    sget-object v3, Lav;->e:[I

    aput-object v3, v0, v2

    .line 275
    aput p0, v1, v2

    .line 276
    const/4 v2, 0x2

    .line 279
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 280
    aput v4, v1, v2

    .line 283
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private h()V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    iget-object v1, p0, Lav;->d:Lbm;

    invoke-virtual {v1, v0}, Lbm;->getPadding(Landroid/graphics/Rect;)Z

    .line 219
    iget-object v1, p0, Lav;->i:Lbn;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lbn;->a(IIII)V

    .line 220
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lav;->m:Lci;

    invoke-virtual {v0}, Lci;->b()V

    .line 155
    return-void
.end method

.method a(F)V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lav;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lav;->d:Lbm;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lav;->d:Lbm;

    iget v1, p0, Lav;->k:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lbm;->a(FF)V

    .line 133
    iput p1, p0, Lav;->j:F

    .line 134
    invoke-direct {p0}, Lav;->h()V

    .line 136
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lav;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 127
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v0, p0, Lav;->c:Lag;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lav;->c:Lag;

    invoke-virtual {v0, p1}, Lag;->a(Landroid/content/res/ColorStateList;)V

    .line 117
    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-virtual {p0}, Lav;->g()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Ljv;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iget-object v0, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lav;->g()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljv;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Lav;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 87
    iget-object v0, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 90
    if-lez p4, :cond_1

    .line 91
    invoke-virtual {p0, p4, p1}, Lav;->a(ILandroid/content/res/ColorStateList;)Lag;

    move-result-object v0

    iput-object v0, p0, Lav;->c:Lag;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lav;->c:Lag;

    aput-object v1, v0, v7

    iget-object v1, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    move-object v3, v0

    .line 98
    :goto_0
    new-instance v0, Lbm;

    iget-object v1, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lav;->i:Lbn;

    invoke-interface {v3}, Lbn;->a()F

    move-result v3

    iget v4, p0, Lav;->j:F

    iget v5, p0, Lav;->j:F

    iget v6, p0, Lav;->k:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lbm;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Lav;->d:Lbm;

    .line 104
    iget-object v0, p0, Lav;->d:Lbm;

    invoke-virtual {v0, v7}, Lbm;->a(Z)V

    .line 106
    iget-object v0, p0, Lav;->i:Lbn;

    iget-object v1, p0, Lav;->d:Lbm;

    invoke-interface {v0, v1}, Lbn;->a(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lav;->h()V

    .line 109
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lav;->c:Lag;

    .line 95
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Lav;->b:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    move-object v3, v0

    goto :goto_0
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lav;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ljv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 122
    return-void
.end method

.method a(Lbg;)V
    .locals 4

    .prologue
    .line 159
    iget-boolean v0, p0, Lav;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Lbg;->b()V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lq;->design_fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 169
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 171
    new-instance v1, Law;

    invoke-direct {v1, p0, p1}, Law;-><init>(Lav;Lbg;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 186
    iget-object v1, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lav;->m:Lci;

    invoke-virtual {v0, p1}, Lci;->a([I)V

    .line 150
    return-void
.end method

.method b(F)V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lav;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lav;->d:Lbm;

    if-eqz v0, :cond_0

    .line 141
    iput p1, p0, Lav;->k:F

    .line 142
    iget-object v0, p0, Lav;->d:Lbm;

    iget v1, p0, Lav;->j:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lbm;->c(F)V

    .line 143
    invoke-direct {p0}, Lav;->h()V

    .line 145
    :cond_0
    return-void
.end method

.method b(Lbg;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lav;->n:Z

    if-eqz v0, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 195
    iget-object v0, p0, Lav;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lq;->design_fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 198
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    new-instance v1, Lax;

    invoke-direct {v1, p0, p1}, Lax;-><init>(Lav;Lbg;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 208
    iget-object v1, p0, Lav;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    if-eqz p1, :cond_1

    .line 211
    invoke-interface {p1}, Lbg;->a()V

    goto :goto_0
.end method
