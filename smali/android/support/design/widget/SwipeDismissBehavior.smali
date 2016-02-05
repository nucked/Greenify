.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Lak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lak",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Lvt;

.field private b:Lcm;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private final j:Lvw;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lak;-><init>()V

    .line 84
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 88
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    .line 89
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 90
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 212
    new-instance v0, Lcl;

    invoke-direct {v0, p0}, Lcl;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Lvw;

    .line 348
    return-void
.end method

.method public static a(FFF)F
    .locals 2

    .prologue
    .line 391
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic a(III)I
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(III)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Lcm;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    if-nez v0, :cond_0

    .line 342
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Lvw;

    invoke-static {p1, v0, v1}, Lvt;->a(Landroid/view/ViewGroup;FLvw;)Lvt;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    .line 346
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Lvw;

    invoke-static {p1, v0}, Lvt;->a(Landroid/view/ViewGroup;Lvw;)Lvt;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic b(FFF)F
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    return v0
.end method

.method private static b(III)I
    .locals 1

    .prologue
    .line 374
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic b(Landroid/support/design/widget/SwipeDismissBehavior;)Lvt;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    return-object v0
.end method

.method private static c(FFF)F
    .locals 1

    .prologue
    .line 370
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static synthetic c(Landroid/support/design/widget/SwipeDismissBehavior;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    return v0
.end method

.method public static synthetic d(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:F

    return v0
.end method

.method public static synthetic e(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    return v0
.end method

.method public static synthetic f(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    invoke-virtual {v0}, Lvt;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 145
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:I

    .line 127
    return-void
.end method

.method public a(Lcm;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Lcm;

    .line 117
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-static {p3}, Lnz;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    .line 185
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_2

    .line 190
    :goto_1
    return v1

    .line 174
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0

    .line 189
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 190
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    invoke-virtual {v0, p3}, Lvt;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:F

    .line 154
    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Lvt;

    invoke-virtual {v0, p3}, Lvt;->b(Landroid/view/MotionEvent;)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
