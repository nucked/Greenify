.class public Lcl;
.super Lvw;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Lvw;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_6

    .line 257
    invoke-static {p1}, Lou;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 260
    :goto_0
    iget-object v3, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 278
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 257
    goto :goto_0

    .line 263
    :cond_2
    iget-object v3, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-nez v3, :cond_4

    .line 266
    if-eqz v0, :cond_3

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 267
    :cond_4
    iget-object v3, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 270
    if-eqz v0, :cond_5

    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 273
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lcl;->b:I

    sub-int/2addr v0, v3

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->d(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 275
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    .line 278
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-static {p1}, Lou;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 292
    :goto_0
    iget-object v2, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-nez v2, :cond_2

    .line 293
    if-eqz v0, :cond_1

    .line 294
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 295
    iget v0, p0, Lcl;->b:I

    .line 313
    :goto_1
    invoke-static {v1, p2, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(III)I

    move-result v0

    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    iget v1, p0, Lcl;->b:I

    .line 298
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 300
    :cond_2
    iget-object v2, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 301
    if-eqz v0, :cond_3

    .line 302
    iget v1, p0, Lcl;->b:I

    .line 303
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 305
    :cond_3
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 306
    iget v0, p0, Lcl;->b:I

    goto :goto_1

    .line 309
    :cond_4
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 310
    iget v0, p0, Lcl;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcm;->a(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 236
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Lcl;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcl;->b:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcl;->b:I

    sub-int/2addr v0, v1

    .line 242
    :goto_0
    const/4 v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    .line 248
    :goto_1
    iget-object v2, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Lvt;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lvt;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    new-instance v1, Lcn;

    iget-object v2, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v1, v2, p1, v0}, Lcn;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_2
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lcl;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 245
    :cond_2
    iget v1, p0, Lcl;->b:I

    goto :goto_1

    .line 250
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcm;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 323
    iget v0, p0, Lcl;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->e(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 325
    iget v1, p0, Lcl;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->f(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 328
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 329
    invoke-static {p1, v4}, Lou;->c(Landroid/view/View;F)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 331
    invoke-static {p1, v5}, Lou;->c(Landroid/view/View;F)V

    goto :goto_0

    .line 334
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    .line 335
    sub-float v0, v4, v0

    invoke-static {v5, v0, v4}, Landroid/support/design/widget/SwipeDismissBehavior;->b(FFF)F

    move-result v0

    invoke-static {p1, v0}, Lou;->c(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcl;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcl;->b:I

    .line 223
    return-void
.end method
