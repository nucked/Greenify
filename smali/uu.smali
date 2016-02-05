.class public Luu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Object;

.field b:Luv;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 279
    new-instance v0, Luy;

    invoke-direct {v0}, Luy;-><init>()V

    iput-object v0, p0, Luu;->b:Luv;

    .line 285
    :goto_0
    iget-object v0, p0, Luu;->b:Luv;

    invoke-interface {v0, p2, p3}, Luv;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Luu;->a:Ljava/lang/Object;

    .line 286
    return-void

    .line 280
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 281
    new-instance v0, Lux;

    invoke-direct {v0}, Lux;-><init>()V

    iput-object v0, p0, Luu;->b:Luv;

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Luw;

    invoke-direct {v0}, Luw;-><init>()V

    iput-object v0, p0, Luu;->b:Luv;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Luu;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;)Luu;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0}, Luu;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luu;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luu;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Luu;

    invoke-direct {v0, p0, p1}, Luu;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Luv;->a(Ljava/lang/Object;IIII)V

    .line 368
    return-void
.end method

.method public a(IIIII)V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Luv;->a(Ljava/lang/Object;IIIII)V

    .line 385
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 10

    .prologue
    .line 408
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Luv;->a(Ljava/lang/Object;IIIIIIII)V

    .line 409
    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 12

    .prologue
    .line 436
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Luv;->a(Ljava/lang/Object;IIIIIIIIII)V

    .line 438
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(IIIIII)Z
    .locals 8

    .prologue
    .line 453
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Luv;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()F
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Luu;->b:Luv;

    iget-object v1, p0, Luu;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Luv;->f(Ljava/lang/Object;)V

    .line 462
    return-void
.end method
