.class public Landroid/support/design/widget/Snackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:I

.field private e:Lcc;

.field private f:Lcb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 654
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 657
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 658
    sget-object v0, Lx;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 659
    sget v1, Lx;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    .line 660
    sget v1, Lx;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    .line 662
    sget v1, Lx;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    sget v1, Lx;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lou;->f(Landroid/view/View;F)V

    .line 666
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 668
    invoke-virtual {p0, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setClickable(Z)V

    .line 673
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lv;->design_layout_snackbar_include:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 675
    invoke-static {p0, v3}, Lou;->d(Landroid/view/View;I)V

    .line 677
    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 800
    invoke-static {p0}, Lou;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-static {p0}, Lou;->j(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lou;->k(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Lou;->a(Landroid/view/View;IIII)V

    .line 808
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(III)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 786
    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 788
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOrientation(I)V

    move v0, v1

    .line 791
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 793
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, p2, p3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Landroid/view/View;II)V

    move v0, v1

    .line 796
    :cond_2
    return v0
.end method


# virtual methods
.method public a(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 729
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 730
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lqj;->a(F)Lqj;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lqj;->b(J)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 733
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 735
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lqj;->a(F)Lqj;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lqj;->b(J)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 738
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 741
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lou;->c(Landroid/view/View;F)V

    .line 742
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqj;->a(F)Lqj;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lqj;->b(J)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 745
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0, v4}, Lou;->c(Landroid/view/View;F)V

    .line 747
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-static {v0}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqj;->a(F)Lqj;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lqj;->a(J)Lqj;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lqj;->b(J)Lqj;

    move-result-object v0

    invoke-virtual {v0}, Lqj;->c()V

    .line 750
    :cond_0
    return-void
.end method

.method getActionView()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 762
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 763
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Lcb;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Lcb;

    invoke-interface {v0, p0}, Lcb;->a(Landroid/view/View;)V

    .line 766
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 770
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 771
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Lcb;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Lcb;

    invoke-interface {v0, p0}, Lcb;->b(Landroid/view/View;)V

    .line 774
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 682
    sget v0, Lu;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    .line 683
    sget v0, Lu;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    .line 684
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 754
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 755
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Lcc;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Lcc;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcc;->a(Landroid/view/View;IIII)V

    .line 758
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 696
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 698
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    if-le v0, v1, :cond_0

    .line 699
    iget v0, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 700
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lt;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 705
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lt;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 707
    iget-object v4, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_2

    move v4, v2

    .line 710
    :goto_0
    if-eqz v4, :cond_3

    iget v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->d:I

    if-le v5, v6, :cond_3

    .line 712
    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 723
    :goto_1
    if-eqz v0, :cond_1

    .line 724
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 726
    :cond_1
    return-void

    :cond_2
    move v4, v3

    .line 707
    goto :goto_0

    .line 717
    :cond_3
    if-eqz v4, :cond_4

    .line 718
    :goto_2
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 719
    goto :goto_1

    :cond_4
    move v0, v1

    .line 717
    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method setOnAttachStateChangeListener(Lcb;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->f:Lcb;

    .line 782
    return-void
.end method

.method public setOnLayoutChangeListener(Lcc;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$SnackbarLayout;->e:Lcc;

    .line 778
    return-void
.end method