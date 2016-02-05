.class public Lcjg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Canvas;

.field private final c:Landroid/content/res/Resources;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcjg;->a:Landroid/graphics/Rect;

    .line 22
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcjg;->b:Landroid/graphics/Canvas;

    .line 28
    iget-object v0, p0, Lcjg;->b:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcjg;->c:Landroid/content/res/Resources;

    .line 30
    iget-object v0, p0, Lcjg;->c:Landroid/content/res/Resources;

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcjg;->e:I

    iput v0, p0, Lcjg;->d:I

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 46
    iget v2, p0, Lcjg;->d:I

    .line 47
    iget v1, p0, Lcjg;->e:I

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 52
    instance-of v0, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    .line 54
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 58
    :cond_0
    if-lez v2, :cond_2

    if-lez v1, :cond_2

    .line 59
    if-lt v2, v3, :cond_1

    if-ge v1, v4, :cond_5

    .line 60
    :cond_1
    int-to-float v0, v3

    int-to-float v5, v4

    div-float/2addr v0, v5

    .line 62
    if-le v3, v4, :cond_3

    .line 63
    int-to-float v1, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    move v1, v2

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    :goto_1
    iget v3, p0, Lcjg;->d:I

    iget v4, p0, Lcjg;->e:I

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcjg;->b:Landroid/graphics/Canvas;

    .line 71
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    iget-object v4, p0, Lcjg;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 78
    iget v4, p0, Lcjg;->d:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 79
    iget v5, p0, Lcjg;->e:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 80
    add-int/2addr v1, v4

    add-int/2addr v0, v5

    invoke-virtual {p1, v4, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcjg;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcjg;->c:Landroid/content/res/Resources;

    invoke-direct {p1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 100
    :cond_2
    :goto_2
    return-object p1

    .line 64
    :cond_3
    if-le v4, v3, :cond_6

    .line 65
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    .line 67
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 85
    :cond_5
    if-ge v3, v2, :cond_2

    if-ge v4, v1, :cond_2

    .line 86
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 87
    iget v5, p0, Lcjg;->d:I

    iget v6, p0, Lcjg;->e:I

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    iget-object v5, p0, Lcjg;->b:Landroid/graphics/Canvas;

    .line 89
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v6, p0, Lcjg;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 92
    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 93
    add-int/2addr v3, v2

    add-int/2addr v4, v1

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v1, p0, Lcjg;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcjg;->c:Landroid/content/res/Resources;

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v2

    goto/16 :goto_0
.end method
