.class public abstract Lafj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field h:Lacz;

.field public i:Landroid/support/v7/widget/RecyclerView;

.field j:Laft;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5726
    iput-boolean v0, p0, Lafj;->a:Z

    .line 5728
    iput-boolean v0, p0, Lafj;->b:Z

    .line 7859
    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 6890
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6894
    if-eqz p3, :cond_2

    .line 6895
    if-ltz p2, :cond_1

    .line 6916
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 6902
    goto :goto_0

    .line 6905
    :cond_2
    if-gez p2, :cond_0

    .line 6908
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 6910
    goto :goto_0

    .line 6911
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 6913
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 6413
    iget-object v0, p0, Lafj;->h:Lacz;

    invoke-virtual {v0, p1}, Lacz;->d(I)V

    .line 6414
    return-void
.end method

.method static synthetic a(Lafj;Laft;)V
    .locals 0

    .prologue
    .line 5719
    invoke-direct {p0, p1}, Lafj;->a(Laft;)V

    return-void
.end method

.method private a(Lafp;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 6763
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 6764
    invoke-virtual {v0}, Lafy;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6778
    :goto_0
    return-void

    .line 6770
    :cond_0
    invoke-virtual {v0}, Lafy;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v1

    invoke-virtual {v1}, Laez;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6772
    invoke-virtual {p0, p2}, Lafj;->d(I)V

    .line 6773
    invoke-virtual {p1, v0}, Lafp;->b(Lafy;)V

    goto :goto_0

    .line 6775
    :cond_1
    invoke-virtual {p0, p2}, Lafj;->e(I)V

    .line 6776
    invoke-virtual {p1, p3}, Lafp;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Laft;)V
    .locals 1

    .prologue
    .line 7523
    iget-object v0, p0, Lafj;->j:Laft;

    if-ne v0, p1, :cond_0

    .line 7524
    const/4 v0, 0x0

    iput-object v0, p0, Lafj;->j:Laft;

    .line 7526
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 6216
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v1

    .line 6217
    if-nez p3, :cond_0

    invoke-virtual {v1}, Lafy;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6219
    :cond_0
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0, v1}, Lahi;->c(Lafy;)V

    .line 6228
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 6229
    invoke-virtual {v1}, Lafy;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lafy;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6230
    :cond_1
    invoke-virtual {v1}, Lafy;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6231
    invoke-virtual {v1}, Lafy;->j()V

    .line 6235
    :goto_1
    iget-object v2, p0, Lafj;->h:Lacz;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lacz;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6260
    :cond_2
    :goto_2
    iget-boolean v2, v0, Lafk;->d:Z

    if-eqz v2, :cond_3

    .line 6264
    iget-object v1, v1, Lafy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6265
    iput-boolean v4, v0, Lafk;->d:Z

    .line 6267
    :cond_3
    return-void

    .line 6226
    :cond_4
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0, v1}, Lahi;->d(Lafy;)V

    goto :goto_0

    .line 6233
    :cond_5
    invoke-virtual {v1}, Lafy;->l()V

    goto :goto_1

    .line 6239
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 6241
    iget-object v2, p0, Lafj;->h:Lacz;

    invoke-virtual {v2, p1}, Lacz;->b(Landroid/view/View;)I

    move-result v2

    .line 6242
    if-ne p2, v5, :cond_7

    .line 6243
    iget-object v3, p0, Lafj;->h:Lacz;

    invoke-virtual {v3}, Lacz;->b()I

    move-result p2

    .line 6245
    :cond_7
    if-ne v2, v5, :cond_8

    .line 6246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6250
    :cond_8
    if-eq v2, p2, :cond_2

    .line 6251
    iget-object v3, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lafj;->a(II)V

    goto :goto_2

    .line 6254
    :cond_9
    iget-object v2, p0, Lafj;->h:Lacz;

    invoke-virtual {v2, p1, p2, v4}, Lacz;->a(Landroid/view/View;IZ)V

    .line 6255
    const/4 v2, 0x1

    iput-boolean v2, v0, Lafk;->c:Z

    .line 6256
    iget-object v2, p0, Lafj;->j:Laft;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lafj;->j:Laft;

    invoke-virtual {v2}, Laft;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6257
    iget-object v2, p0, Lafj;->j:Laft;

    invoke-virtual {v2, p1}, Laft;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static synthetic a(Lafj;)Z
    .locals 1

    .prologue
    .line 5719
    iget-boolean v0, p0, Lafj;->a:Z

    return v0
.end method

.method public static synthetic a(Lafj;Z)Z
    .locals 0

    .prologue
    .line 5719
    iput-boolean p1, p0, Lafj;->a:Z

    return p1
.end method


# virtual methods
.method public a(ILafp;Lafv;)I
    .locals 1

    .prologue
    .line 6045
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Lafk;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lafk;
    .locals 1

    .prologue
    .line 6028
    new-instance v0, Lafk;

    invoke-direct {v0, p1, p2}, Lafk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lafk;
    .locals 1

    .prologue
    .line 6004
    instance-of v0, p1, Lafk;

    if-eqz v0, :cond_0

    .line 6005
    new-instance v0, Lafk;

    check-cast p1, Lafk;

    invoke-direct {v0, p1}, Lafk;-><init>(Lafk;)V

    .line 6009
    :goto_0
    return-object v0

    .line 6006
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6007
    new-instance v0, Lafk;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lafk;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6009
    :cond_1
    new-instance v0, Lafk;

    invoke-direct {v0, p1}, Lafk;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILafp;Lafv;)Landroid/view/View;
    .locals 1

    .prologue
    .line 7134
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 6478
    invoke-virtual {p0, p1}, Lafj;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6479
    if-nez v0, :cond_0

    .line 6480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6483
    :cond_0
    invoke-virtual {p0, p1}, Lafj;->e(I)V

    .line 6484
    invoke-virtual {p0, v0, p2}, Lafj;->c(Landroid/view/View;I)V

    .line 6485
    return-void
.end method

.method public a(ILafp;)V
    .locals 1

    .prologue
    .line 6533
    invoke-virtual {p0, p1}, Lafj;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6534
    invoke-virtual {p0, p1}, Lafj;->d(I)V

    .line 6535
    invoke-virtual {p2, v0}, Lafp;->a(Landroid/view/View;)V

    .line 6536
    return-void
.end method

.method public a(Laez;Laez;)V
    .locals 0

    .prologue
    .line 7260
    return-void
.end method

.method public a(Lafp;)V
    .locals 2

    .prologue
    .line 6755
    invoke-virtual {p0}, Lafj;->o()I

    move-result v0

    .line 6756
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6757
    invoke-virtual {p0, v0}, Lafj;->f(I)Landroid/view/View;

    move-result-object v1

    .line 6758
    invoke-direct {p0, p1, v0, v1}, Lafj;->a(Lafp;ILandroid/view/View;)V

    .line 6756
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6760
    :cond_0
    return-void
.end method

.method public a(Lafp;Lafv;)V
    .locals 2

    .prologue
    .line 5956
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    return-void
.end method

.method public a(Lafp;Lafv;II)V
    .locals 1

    .prologue
    .line 7470
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7471
    return-void
.end method

.method public a(Lafp;Lafv;Landroid/view/View;Lrl;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 7667
    invoke-virtual {p0}, Lafj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lafj;->d(Landroid/view/View;)I

    move-result v0

    .line 7668
    :goto_0
    invoke-virtual {p0}, Lafj;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lafj;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 7669
    invoke-static/range {v0 .. v5}, Lrw;->a(IIIIZZ)Lrw;

    move-result-object v0

    .line 7672
    invoke-virtual {p4, v0}, Lrl;->b(Ljava/lang/Object;)V

    .line 7673
    return-void

    :cond_0
    move v0, v4

    .line 7667
    goto :goto_0

    :cond_1
    move v2, v4

    .line 7668
    goto :goto_1
.end method

.method public a(Lafp;Lafv;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 7626
    invoke-static {p3}, Lrf;->a(Landroid/view/accessibility/AccessibilityEvent;)Lso;

    move-result-object v1

    .line 7628
    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 7639
    :cond_0
    :goto_0
    return-void

    .line 7631
    :cond_1
    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Lou;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Lou;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Lou;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Lou;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lso;->a(Z)V

    .line 7636
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7637
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0}, Laez;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lso;->a(I)V

    goto :goto_0

    .line 7631
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lafp;Lafv;Lrl;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 7589
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lou;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lou;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7591
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lrl;->a(I)V

    .line 7592
    invoke-virtual {p3, v1}, Lrl;->a(Z)V

    .line 7594
    :cond_1
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lou;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lou;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7596
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lrl;->a(I)V

    .line 7597
    invoke-virtual {p3, v1}, Lrl;->a(Z)V

    .line 7599
    :cond_3
    invoke-virtual {p0, p1, p2}, Lafj;->c(Lafp;Lafv;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lafj;->d(Lafp;Lafv;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lafj;->e(Lafp;Lafv;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Lafj;->b(Lafp;Lafv;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lrv;->a(IIZI)Lrv;

    move-result-object v0

    .line 7605
    invoke-virtual {p3, v0}, Lrl;->a(Ljava/lang/Object;)V

    .line 7606
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7514
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5731
    if-nez p1, :cond_0

    .line 5732
    iput-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    .line 5733
    iput-object v0, p0, Lafj;->h:Lacz;

    .line 5739
    :goto_0
    return-void

    .line 5735
    :cond_0
    iput-object p1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    .line 5736
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    iput-object v0, p0, Lafj;->h:Lacz;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7310
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 7362
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 7345
    invoke-virtual {p0, p1, p2, p3}, Lafj;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7346
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Lafp;)V
    .locals 0

    .prologue
    .line 5892
    invoke-virtual {p0, p1}, Lafj;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 5893
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lafj;->a(Landroid/view/View;I)V

    .line 6172
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6189
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lafj;->a(Landroid/view/View;IZ)V

    .line 6190
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 6

    .prologue
    .line 6860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 6862
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6863
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 6864
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 6866
    invoke-virtual {p0}, Lafj;->p()I

    move-result v3

    invoke-virtual {p0}, Lafj;->r()I

    move-result v4

    invoke-virtual {p0}, Lafj;->t()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lafk;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lafk;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Lafk;->width:I

    invoke-virtual {p0}, Lafj;->c()Z

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lafj;->a(IIIZ)I

    move-result v2

    .line 6870
    invoke-virtual {p0}, Lafj;->q()I

    move-result v3

    invoke-virtual {p0}, Lafj;->s()I

    move-result v4

    invoke-virtual {p0}, Lafj;->u()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lafk;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lafk;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v0, v0, Lafk;->height:I

    invoke-virtual {p0}, Lafj;->d()Z

    move-result v4

    invoke-static {v3, v1, v0, v4}, Lafj;->a(IIIZ)I

    move-result v0

    .line 6874
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 6875
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 6975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 6976
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 6978
    return-void
.end method

.method public a(Landroid/view/View;ILafk;)V
    .locals 2

    .prologue
    .line 6426
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 6427
    invoke-virtual {v0}, Lafy;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6428
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v1, v0}, Lahi;->c(Lafy;)V

    .line 6432
    :goto_0
    iget-object v1, p0, Lafj;->h:Lacz;

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lacz;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6436
    return-void

    .line 6430
    :cond_0
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v1, v0}, Lahi;->d(Lafy;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lafp;)V
    .locals 0

    .prologue
    .line 6522
    invoke-virtual {p0, p1}, Lafj;->c(Landroid/view/View;)V

    .line 6523
    invoke-virtual {p2, p1}, Lafp;->a(Landroid/view/View;)V

    .line 6524
    return-void
.end method

.method a(Landroid/view/View;Lrl;)V
    .locals 2

    .prologue
    .line 7643
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 7645
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lafj;->h:Lacz;

    iget-object v0, v0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Lacz;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7646
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {p0, v0, v1, p1, p2}, Lafj;->a(Lafp;Lafv;Landroid/view/View;Lrl;)V

    .line 7649
    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 7610
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {p0, v0, v1, p1}, Lafj;->a(Lafp;Lafv;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7611
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5771
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5772
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5774
    :cond_0
    return-void
.end method

.method a(Lrl;)V
    .locals 2

    .prologue
    .line 7559
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {p0, v0, v1, p1}, Lafj;->a(Lafp;Lafv;Lrl;)V

    .line 7560
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 7762
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {p0, v0, v1, p1, p2}, Lafj;->a(Lafp;Lafv;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Lafk;)Z
    .locals 1

    .prologue
    .line 5987
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lafp;Lafv;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7778
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 7804
    :cond_0
    :goto_0
    return v1

    .line 7782
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 7800
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 7803
    :cond_2
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 7804
    goto :goto_0

    .line 7784
    :sswitch_0
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v4}, Lou;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7785
    invoke-virtual {p0}, Lafj;->q()I

    move-result v0

    invoke-virtual {p0}, Lafj;->s()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lafj;->u()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 7787
    :goto_2
    iget-object v3, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Lou;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7788
    invoke-virtual {p0}, Lafj;->p()I

    move-result v3

    invoke-virtual {p0}, Lafj;->r()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lafj;->t()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 7792
    :sswitch_1
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lou;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7793
    invoke-virtual {p0}, Lafj;->q()I

    move-result v0

    invoke-virtual {p0}, Lafj;->s()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lafj;->u()I

    move-result v3

    sub-int/2addr v0, v3

    .line 7795
    :goto_3
    iget-object v3, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Lou;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7796
    invoke-virtual {p0}, Lafj;->p()I

    move-result v3

    invoke-virtual {p0}, Lafj;->r()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lafj;->t()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 7782
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lafp;Lafv;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 7830
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Lafv;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 7244
    invoke-virtual {p0, p1, p3, p4}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    .prologue
    .line 7174
    invoke-virtual {p0}, Lafj;->r()I

    move-result v3

    .line 7175
    invoke-virtual {p0}, Lafj;->s()I

    move-result v4

    .line 7176
    invoke-virtual {p0}, Lafj;->p()I

    move-result v0

    invoke-virtual {p0}, Lafj;->t()I

    move-result v1

    sub-int v5, v0, v1

    .line 7177
    invoke-virtual {p0}, Lafj;->q()I

    move-result v0

    invoke-virtual {p0}, Lafj;->u()I

    move-result v1

    sub-int v6, v0, v1

    .line 7178
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int v7, v0, v1

    .line 7179
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v0, v1

    .line 7180
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    .line 7181
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    .line 7183
    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7184
    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7185
    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7186
    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7192
    invoke-virtual {p0}, Lafj;->m()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 7193
    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    .line 7202
    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    .line 7205
    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 7206
    :cond_0
    if-eqz p4, :cond_5

    .line 7207
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7211
    :goto_3
    const/4 v0, 0x1

    .line 7213
    :goto_4
    return v0

    .line 7193
    :cond_1
    sub-int v0, v9, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 7196
    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v7, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 7202
    :cond_4
    sub-int v0, v8, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 7209
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_3

    .line 7213
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7222
    invoke-virtual {p0}, Lafj;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 7288
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 7809
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lafj;->a(Lafp;Lafv;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(ILafp;Lafv;)I
    .locals 1

    .prologue
    .line 6062
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lafp;Lafv;)I
    .locals 1

    .prologue
    .line 7705
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lafv;)I
    .locals 1

    .prologue
    .line 7392
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 7508
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 6353
    invoke-virtual {p0}, Lafj;->o()I

    move-result v2

    .line 6354
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 6355
    invoke-virtual {p0, v1}, Lafj;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6356
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 6357
    if-nez v3, :cond_1

    .line 6354
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6360
    :cond_1
    invoke-virtual {v3}, Lafy;->d()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lafy;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v4}, Lafv;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lafy;->q()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6365
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lafp;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6790
    invoke-virtual {p1}, Lafp;->d()I

    move-result v1

    .line 6792
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6793
    invoke-virtual {p1, v0}, Lafp;->d(I)Landroid/view/View;

    move-result-object v2

    .line 6794
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v3

    .line 6795
    invoke-virtual {v3}, Lafy;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6792
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6803
    :cond_0
    invoke-virtual {v3, v5}, Lafy;->a(Z)V

    .line 6804
    invoke-virtual {v3}, Lafy;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6805
    iget-object v4, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6807
    :cond_1
    iget-object v4, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    if-eqz v4, :cond_2

    .line 6808
    iget-object v4, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v4, v3}, Lafd;->c(Lafy;)V

    .line 6810
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lafy;->a(Z)V

    .line 6811
    invoke-virtual {p1, v2}, Lafp;->b(Landroid/view/View;)V

    goto :goto_1

    .line 6813
    :cond_3
    invoke-virtual {p1}, Lafp;->e()V

    .line 6814
    if-lez v1, :cond_4

    .line 6815
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6817
    :cond_4
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 5801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafj;->b:Z

    .line 5802
    invoke-virtual {p0, p1}, Lafj;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 5803
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7320
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Lafp;)V
    .locals 1

    .prologue
    .line 5806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafj;->b:Z

    .line 5807
    invoke-virtual {p0, p1, p2}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;Lafp;)V

    .line 5808
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6200
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lafj;->b(Landroid/view/View;I)V

    .line 6201
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafj;->a(Landroid/view/View;IZ)V

    .line 6213
    return-void
.end method

.method public c(Lafp;Lafv;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7721
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7724
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lafj;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0}, Laez;->a()I

    move-result v0

    goto :goto_0
.end method

.method public c(Lafv;)I
    .locals 1

    .prologue
    .line 7437
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 6095
    return-void
.end method

.method public c(Lafp;)V
    .locals 2

    .prologue
    .line 7549
    invoke-virtual {p0}, Lafj;->o()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7550
    invoke-virtual {p0, v0}, Lafj;->f(I)Landroid/view/View;

    move-result-object v1

    .line 7551
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v1

    invoke-virtual {v1}, Lafy;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7552
    invoke-virtual {p0, v0, p1}, Lafj;->a(ILafp;)V

    .line 7549
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7555
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5868
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 7332
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6278
    iget-object v0, p0, Lafj;->h:Lacz;

    invoke-virtual {v0, p1}, Lacz;->a(Landroid/view/View;)V

    .line 6279
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6447
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    invoke-virtual {p0, p1, p2, v0}, Lafj;->a(Landroid/view/View;ILafk;)V

    .line 6448
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 6072
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lafp;Lafv;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7740
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7743
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lafj;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0}, Laez;->a()I

    move-result v0

    goto :goto_0
.end method

.method public d(Lafv;)I
    .locals 1

    .prologue
    .line 7377
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6326
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    invoke-virtual {v0}, Lafk;->c()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 7154
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 6290
    invoke-virtual {p0, p1}, Lafj;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6291
    if-eqz v0, :cond_0

    .line 6292
    iget-object v0, p0, Lafj;->h:Lacz;

    invoke-virtual {v0, p1}, Lacz;->a(I)V

    .line 6294
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5877
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 6082
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lafv;)I
    .locals 1

    .prologue
    .line 7422
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 6930
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 6406
    invoke-virtual {p0, p1}, Lafj;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lafj;->a(ILandroid/view/View;)V

    .line 6407
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7298
    return-void
.end method

.method public e(Lafp;Lafv;)Z
    .locals 1

    .prologue
    .line 7757
    const/4 v0, 0x0

    return v0
.end method

.method public f(Lafv;)I
    .locals 1

    .prologue
    .line 7407
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    .line 6944
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6554
    iget-object v0, p0, Lafj;->h:Lacz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->h:Lacz;

    invoke-virtual {v0, p1}, Lacz;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Lafv;)I
    .locals 1

    .prologue
    .line 7452
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 6989
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lafj;->m(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 6687
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6688
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    .line 6690
    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7001
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lafj;->k(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 6699
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6700
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 6702
    :cond_0
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7013
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lafj;->n(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 7534
    return-void
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7025
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lafj;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 5797
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 5745
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5746
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5748
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7081
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 6129
    iget-object v0, p0, Lafj;->j:Laft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->j:Laft;

    invoke-virtual {v0}, Laft;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 6142
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lou;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7096
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 6315
    const/4 v0, -0x1

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    iget-object v0, v0, Lafk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 6545
    iget-object v0, p0, Lafj;->h:Lacz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->h:Lacz;

    invoke-virtual {v0}, Lacz;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 6563
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 6572
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 6581
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 6590
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 6599
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 6608
    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6655
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 6662
    :cond_0
    :goto_0
    return-object v0

    .line 6658
    :cond_1
    iget-object v1, p0, Lafj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 6659
    if-eqz v1, :cond_0

    iget-object v2, p0, Lafj;->h:Lacz;

    invoke-virtual {v2, v1}, Lacz;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 6662
    goto :goto_0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 7517
    iget-object v0, p0, Lafj;->j:Laft;

    if-eqz v0, :cond_0

    .line 7518
    iget-object v0, p0, Lafj;->j:Laft;

    invoke-virtual {v0}, Laft;->a()V

    .line 7520
    :cond_0
    return-void
.end method
