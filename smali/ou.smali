.class public Lou;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lph;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1651
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1652
    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sput-object v0, Lou;->a:Lph;

    .line 1674
    :goto_0
    return-void

    .line 1653
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1654
    new-instance v0, Lpf;

    invoke-direct {v0}, Lpf;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1655
    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1656
    new-instance v0, Lpe;

    invoke-direct {v0}, Lpe;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1657
    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 1658
    new-instance v0, Lpc;

    invoke-direct {v0}, Lpc;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1659
    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1660
    new-instance v0, Lpb;

    invoke-direct {v0}, Lpb;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1661
    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    .line 1662
    new-instance v0, Loz;

    invoke-direct {v0}, Loz;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1663
    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 1664
    new-instance v0, Lpa;

    invoke-direct {v0}, Lpa;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1665
    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 1666
    new-instance v0, Loy;

    invoke-direct {v0}, Loy;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1667
    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    .line 1668
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1669
    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    .line 1670
    new-instance v0, Low;

    invoke-direct {v0}, Low;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0

    .line 1672
    :cond_9
    new-instance v0, Lov;

    invoke-direct {v0}, Lov;-><init>()V

    sput-object v0, Lou;->a:Lph;

    goto :goto_0
.end method

.method public static A(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3145
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->C(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static B(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3206
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->D(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static C(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3215
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->E(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 2287
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 2236
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1, p2}, Lph;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1709
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Lrd;)Lrd;
    .locals 1

    .prologue
    .line 2803
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Lrd;)Lrd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2461
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;F)V

    .line 2462
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 3262
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1, p2}, Lph;->a(Landroid/view/View;II)V

    .line 3263
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 2373
    sget-object v0, Lou;->a:Lph;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lph;->a(Landroid/view/View;IIII)V

    .line 2374
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 2082
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1, p2}, Lph;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2083
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 2893
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 2894
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 2917
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 2918
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1924
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1925
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1941
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1, p2, p3}, Lph;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1942
    return-void
.end method

.method public static a(Landroid/view/View;Lmg;)V
    .locals 1

    .prologue
    .line 1846
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Lmg;)V

    .line 1847
    return-void
.end method

.method public static a(Landroid/view/View;Lom;)V
    .locals 1

    .prologue
    .line 2787
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Lom;)V

    .line 2788
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2767
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;Z)V

    .line 2768
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 2749
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/ViewGroup;Z)V

    .line 2750
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1684
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Lrd;)Lrd;
    .locals 1

    .prologue
    .line 2820
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->b(Landroid/view/View;Lrd;)Lrd;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2477
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->b(Landroid/view/View;F)V

    .line 2478
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2831
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->b(Landroid/view/View;Z)V

    .line 2832
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1856
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1695
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2493
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->c(Landroid/view/View;F)V

    .line 2494
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1983
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->c(Landroid/view/View;I)V

    .line 1984
    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2844
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->c(Landroid/view/View;Z)V

    .line 2845
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1868
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1892
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->d(Landroid/view/View;)V

    .line 1893
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2571
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->d(Landroid/view/View;F)V

    .line 2572
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2332
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->d(Landroid/view/View;I)V

    .line 2333
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1959
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2583
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->e(Landroid/view/View;F)V

    .line 2584
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 3154
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3156
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 3158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3160
    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2671
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0, p1}, Lph;->f(Landroid/view/View;F)V

    .line 2672
    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 3167
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3169
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 3171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3173
    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2103
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2174
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2275
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2344
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2356
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2400
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->m(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2413
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2424
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2435
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)Lqj;
    .locals 1

    .prologue
    .line 2447
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->r(Landroid/view/View;)Lqj;

    move-result-object v0

    return-object v0
.end method

.method public static q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2652
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->o(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2728
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->s(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static s(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2736
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->t(Landroid/view/View;)V

    .line 2737
    return-void
.end method

.method public static t(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2757
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->w(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2778
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->x(Landroid/view/View;)V

    .line 2779
    return-void
.end method

.method public static v(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2862
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->l(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2872
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2951
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->z(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static y(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3004
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->A(Landroid/view/View;)V

    .line 3005
    return-void
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3134
    sget-object v0, Lou;->a:Lph;

    invoke-interface {v0, p0}, Lph;->B(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
