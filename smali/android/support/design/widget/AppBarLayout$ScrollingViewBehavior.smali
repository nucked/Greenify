.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Lbk;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Lbk;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 1138
    invoke-direct {p0, p1, p2}, Lbk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1140
    sget-object v0, Lx;->ScrollingViewBehavior_Params:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1142
    sget v1, Lx;->ScrollingViewBehavior_Params_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    .line 1144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1145
    return-void
.end method

.method private a(Landroid/view/View;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1191
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 1192
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1193
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    .line 1194
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    .line 1196
    if-eqz v2, :cond_0

    add-int v3, v1, p2

    if-gt v3, v2, :cond_0

    .line 1209
    :goto_0
    return v0

    .line 1200
    :cond_0
    sub-int/2addr v1, v2

    .line 1201
    if-eqz v1, :cond_1

    .line 1203
    int-to-float v2, p2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1204
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    invoke-static {v1, v0, v2}, Lbl;->a(III)I

    move-result v0

    goto :goto_0

    .line 1209
    :cond_1
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a:I

    goto :goto_0
.end method

.method private e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1178
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lan;

    invoke-virtual {v0}, Lan;->b()Lak;

    move-result-object v0

    .line 1180
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1182
    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    .line 1183
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, p3, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(Landroid/view/View;I)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->a(I)Z

    .line 1185
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1241
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1242
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1244
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lbk;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/util/List;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1230
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1232
    instance-of v3, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1236
    :goto_1
    return-object v0

    .line 1230
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1236
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0, p1}, Lbk;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 1156
    invoke-super {p0, p1, p2, p3}, Lbk;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 1160
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 1161
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1162
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1161
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1

    .prologue
    .line 1132
    invoke-super/range {p0 .. p6}, Lbk;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0}, Lbk;->b()I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1150
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1173
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1174
    const/4 v0, 0x0

    return v0
.end method
