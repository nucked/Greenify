.class abstract Lay;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Lav;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Lav;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lay;->a:Lav;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lav;Law;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lay;-><init>(Lav;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lay;->a:Lav;

    iget-object v0, v0, Lav;->d:Lbm;

    iget v1, p0, Lay;->b:F

    iget v2, p0, Lay;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lbm;->b(F)V

    .line 243
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 236
    iget-object v0, p0, Lay;->a:Lav;

    iget-object v0, v0, Lav;->d:Lbm;

    invoke-virtual {v0}, Lbm;->a()F

    move-result v0

    iput v0, p0, Lay;->b:F

    .line 237
    invoke-virtual {p0}, Lay;->a()F

    move-result v0

    iget v1, p0, Lay;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lay;->c:F

    .line 238
    return-void
.end method
