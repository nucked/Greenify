.class public Laey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Labv;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lafy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 680
    iget-object v1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Lafy;

    move-result-object v1

    .line 681
    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-object v0

    .line 686
    :cond_1
    iget-object v2, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    iget-object v3, v1, Lafy;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Lacz;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 692
    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 697
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 698
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 699
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0, p2}, Lafv;->a(Lafv;I)I

    .line 700
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(IILjava/lang/Object;)V

    .line 711
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 712
    return-void
.end method

.method public a(Labw;)V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Laey;->c(Labw;)V

    .line 717
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 705
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 706
    return-void
.end method

.method public b(Labw;)V
    .locals 0

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Laey;->c(Labw;)V

    .line 740
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 745
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 746
    return-void
.end method

.method c(Labw;)V
    .locals 5

    .prologue
    .line 720
    iget v0, p1, Labw;->a:I

    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    return-void

    .line 722
    :pswitch_1
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Labw;->b:I

    iget v3, p1, Labw;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 725
    :pswitch_2
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Labw;->b:I

    iget v3, p1, Labw;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lafj;->b(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 728
    :pswitch_3
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Labw;->b:I

    iget v3, p1, Labw;->d:I

    iget-object v4, p1, Labw;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 732
    :pswitch_4
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v0

    iget-object v1, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Labw;->b:I

    iget v3, p1, Labw;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lafj;->a(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 752
    iget-object v0, p0, Laey;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 753
    return-void
.end method
