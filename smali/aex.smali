.class public Laex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladb;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_0

    .line 598
    iget-object v1, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 600
    :cond_0
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 601
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 586
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 587
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 625
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {v0}, Lafy;->r()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lafy;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    invoke-virtual {v0}, Lafy;->m()V

    .line 636
    :cond_1
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 637
    return-void
.end method

.method public b(Landroid/view/View;)Lafy;
    .locals 1

    .prologue
    .line 619
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 610
    invoke-virtual {p0}, Laex;->a()I

    move-result v1

    .line 611
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 612
    iget-object v2, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Laex;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 615
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Laex;->b(I)Landroid/view/View;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_1

    .line 643
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lafy;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lafy;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lafy;->b(I)V

    .line 655
    :cond_1
    iget-object v0, p0, Laex;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 656
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 660
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    invoke-static {v0}, Lafy;->a(Lafy;)V

    .line 664
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 668
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    .line 670
    invoke-static {v0}, Lafy;->b(Lafy;)V

    .line 672
    :cond_0
    return-void
.end method
