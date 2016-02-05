.class Lov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lqj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lov;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Lon;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 936
    invoke-interface {p1}, Lon;->computeHorizontalScrollOffset()I

    move-result v2

    .line 937
    invoke-interface {p1}, Lon;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Lon;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 939
    if-nez v3, :cond_1

    move v0, v1

    .line 943
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    if-gez p2, :cond_2

    .line 941
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 943
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Lon;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 948
    invoke-interface {p1}, Lon;->computeVerticalScrollOffset()I

    move-result v2

    .line 949
    invoke-interface {p1}, Lon;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Lon;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 951
    if-nez v3, :cond_1

    move v0, v1

    .line 955
    :cond_0
    :goto_0
    return v0

    .line 952
    :cond_1
    if-gez p2, :cond_2

    .line 953
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 955
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 968
    instance-of v0, p1, Loi;

    if-eqz v0, :cond_0

    .line 969
    check-cast p1, Loi;

    invoke-interface {p1}, Loi;->stopNestedScroll()V

    .line 971
    :cond_0
    return-void
.end method

.method public B(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1021
    invoke-static {p1}, Lpi;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public C(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 1031
    invoke-virtual {p0, p1}, Lov;->v(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Lov;->u(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public D(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1036
    invoke-static {p1}, Lpi;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public E(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 1026
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 581
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 520
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Lrd;)Lrd;
    .locals 0

    .prologue
    .line 878
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 622
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 922
    invoke-static {p1, p2}, Lpi;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 923
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 927
    invoke-static {p1, p2}, Lpi;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 928
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lov;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lov;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    return-void
.end method

.method public a(Landroid/view/View;Lmg;)V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public a(Landroid/view/View;Lom;)V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 469
    instance-of v0, p1, Lon;

    if-eqz v0, :cond_0

    check-cast p1, Lon;

    invoke-direct {p0, p1, p2}, Lov;->a(Lon;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Lrd;)Lrd;
    .locals 0

    .prologue
    .line 883
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 473
    instance-of v0, p1, Lon;

    if-eqz v0, :cond_0

    check-cast p1, Lon;

    invoke-direct {p0, p1, p2}, Lov;->b(Lon;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 509
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 538
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method public m(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 722
    invoke-static {p1}, Lpi;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 727
    invoke-static {p1}, Lpi;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)Lqj;
    .locals 1

    .prologue
    .line 732
    new-instance v0, Lqj;

    invoke-direct {v0, p1}, Lqj;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public s(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public t(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public u(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public w(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public y(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 909
    instance-of v0, p1, Loi;

    if-eqz v0, :cond_0

    .line 910
    check-cast p1, Loi;

    invoke-interface {p1}, Loi;->isNestedScrollingEnabled()Z

    move-result v0

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
