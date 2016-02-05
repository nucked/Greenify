.class public Lz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lz;->a:Landroid/view/animation/Interpolator;

    .line 28
    new-instance v0, Lsw;

    invoke-direct {v0}, Lsw;-><init>()V

    sput-object v0, Lz;->b:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lz;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static a(FFF)F
    .locals 1

    .prologue
    .line 35
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static a(IIF)I
    .locals 1

    .prologue
    .line 39
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
