.class public final Lafp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lafo;

.field private h:Lafw;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4184
    iput-object p1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    .line 4186
    const/4 v0, 0x0

    iput-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    .line 4188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    .line 4190
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lafp;->e:Ljava/util/List;

    .line 4193
    const/4 v0, 0x2

    iput v0, p0, Lafp;->f:I

    return-void
.end method

.method public static synthetic a(Lafp;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 4184
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4532
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4533
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4534
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4535
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lafp;->a(Landroid/view/ViewGroup;Z)V

    .line 4532
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4538
    :cond_1
    if-nez p2, :cond_2

    .line 4550
    :goto_1
    return-void

    .line 4542
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4543
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4544
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4546
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4547
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4548
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4512
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4513
    invoke-static {p1}, Lou;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4515
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lou;->c(Landroid/view/View;I)V

    .line 4518
    :cond_0
    invoke-static {p1}, Lou;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4519
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Lafz;

    move-result-object v0

    invoke-virtual {v0}, Lafz;->b()Lmg;

    move-result-object v0

    invoke-static {p1, v0}, Lou;->a(Landroid/view/View;Lmg;)V

    .line 4523
    :cond_1
    return-void
.end method

.method private f(Lafy;)V
    .locals 2

    .prologue
    .line 4526
    iget-object v0, p1, Lafy;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4527
    iget-object v0, p1, Lafy;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lafp;->a(Landroid/view/ViewGroup;Z)V

    .line 4529
    :cond_0
    return-void
.end method


# virtual methods
.method a(IIZ)Lafy;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 4802
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4805
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4806
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4807
    invoke-virtual {v0}, Lafy;->k()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lafy;->d()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v0}, Lafy;->n()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v4}, Lafv;->e(Lafv;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4809
    :cond_0
    if-eq p2, v5, :cond_2

    invoke-virtual {v0}, Lafy;->h()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 4810
    const-string v2, "RecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrap view for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isn\'t dirty but has"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wrong view type! (found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lafy;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    :cond_1
    if-nez p3, :cond_6

    .line 4821
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v0, p1, p2}, Lacz;->a(II)Landroid/view/View;

    move-result-object v2

    .line 4822
    if-eqz v2, :cond_6

    .line 4825
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 4826
    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v1, v2}, Lacz;->e(Landroid/view/View;)V

    .line 4827
    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v1, v2}, Lacz;->b(Landroid/view/View;)I

    move-result v1

    .line 4828
    if-ne v1, v5, :cond_5

    .line 4829
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4815
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lafy;->b(I)V

    .line 4857
    :cond_3
    :goto_1
    return-object v0

    .line 4805
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 4832
    :cond_5
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->c:Lacz;

    invoke-virtual {v3, v1}, Lacz;->d(I)V

    .line 4833
    invoke-virtual {p0, v2}, Lafp;->c(Landroid/view/View;)V

    .line 4834
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Lafy;->b(I)V

    goto :goto_1

    .line 4841
    :cond_6
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4842
    :goto_2
    if-ge v1, v2, :cond_8

    .line 4843
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4846
    invoke-virtual {v0}, Lafy;->n()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 4847
    if-nez p3, :cond_3

    .line 4848
    iget-object v2, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4842
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4857
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(JIZ)Lafy;
    .locals 5

    .prologue
    .line 4862
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4863
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4864
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4865
    invoke-virtual {v0}, Lafy;->g()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lafy;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4866
    invoke-virtual {v0}, Lafy;->h()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 4867
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lafy;->b(I)V

    .line 4868
    invoke-virtual {v0}, Lafy;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4877
    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v1}, Lafv;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4878
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lafy;->a(II)V

    .line 4909
    :cond_0
    :goto_1
    return-object v0

    .line 4883
    :cond_1
    if-nez p4, :cond_2

    .line 4887
    iget-object v2, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4888
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Lafy;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4889
    iget-object v0, v0, Lafy;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lafp;->b(Landroid/view/View;)V

    .line 4863
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4895
    :cond_3
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4896
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 4897
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4898
    invoke-virtual {v0}, Lafy;->g()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 4899
    invoke-virtual {v0}, Lafy;->h()I

    move-result v2

    if-ne p3, v2, :cond_4

    .line 4900
    if-nez p4, :cond_0

    .line 4901
    iget-object v2, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4904
    :cond_4
    if-nez p4, :cond_5

    .line 4905
    invoke-virtual {p0, v1}, Lafp;->c(I)V

    .line 4896
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 4909
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4367
    if-ltz p1, :cond_0

    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4368
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v2}, Lafv;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4374
    :cond_1
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4375
    invoke-virtual {p0, p1}, Lafp;->e(I)Lafy;

    move-result-object v4

    .line 4376
    if-eqz v4, :cond_5

    move v0, v1

    :goto_0
    move-object v9, v4

    move v4, v0

    move-object v0, v9

    .line 4379
    :goto_1
    if-nez v0, :cond_16

    .line 4380
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lafp;->a(IIZ)Lafy;

    move-result-object v0

    .line 4381
    if-eqz v0, :cond_16

    .line 4382
    invoke-virtual {p0, v0}, Lafp;->a(Lafy;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4384
    if-nez p2, :cond_3

    .line 4387
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lafy;->b(I)V

    .line 4388
    invoke-virtual {v0}, Lafy;->i()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4389
    iget-object v5, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4390
    invoke-virtual {v0}, Lafy;->j()V

    .line 4394
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lafp;->b(Lafy;)V

    :cond_3
    move-object v0, v3

    move v3, v4

    .line 4402
    :goto_3
    if-nez v0, :cond_15

    .line 4403
    iget-object v4, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v4, p1}, Labu;->b(I)I

    move-result v4

    .line 4404
    if-ltz v4, :cond_4

    iget-object v5, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v5

    invoke-virtual {v5}, Laez;->a()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 4405
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v2}, Lafv;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 4376
    goto/16 :goto_0

    .line 4391
    :cond_6
    invoke-virtual {v0}, Lafy;->k()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4392
    invoke-virtual {v0}, Lafy;->l()V

    goto :goto_2

    :cond_7
    move v3, v1

    .line 4398
    goto :goto_3

    .line 4410
    :cond_8
    iget-object v5, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v5

    invoke-virtual {v5, v4}, Laez;->a(I)I

    move-result v5

    .line 4412
    iget-object v6, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v6

    invoke-virtual {v6}, Laez;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4413
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0, v4}, Laez;->b(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Lafp;->a(JIZ)Lafy;

    move-result-object v0

    .line 4414
    if-eqz v0, :cond_9

    .line 4416
    iput v4, v0, Lafy;->b:I

    move v3, v1

    .line 4420
    :cond_9
    if-nez v0, :cond_b

    iget-object v4, p0, Lafp;->h:Lafw;

    if-eqz v4, :cond_b

    .line 4423
    iget-object v4, p0, Lafp;->h:Lafw;

    invoke-virtual {v4, p0, p1, v5}, Lafw;->a(Lafp;II)Landroid/view/View;

    move-result-object v4

    .line 4425
    if-eqz v4, :cond_b

    .line 4426
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 4427
    if-nez v0, :cond_a

    .line 4428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4430
    :cond_a
    invoke-virtual {v0}, Lafy;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4437
    :cond_b
    if-nez v0, :cond_c

    .line 4444
    invoke-virtual {p0}, Lafp;->f()Lafo;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafo;->a(I)Lafy;

    move-result-object v0

    .line 4445
    if-eqz v0, :cond_c

    .line 4446
    invoke-virtual {v0}, Lafy;->v()V

    .line 4447
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4448
    invoke-direct {p0, v0}, Lafp;->f(Lafy;)V

    .line 4452
    :cond_c
    if-nez v0, :cond_15

    .line 4453
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    iget-object v4, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v5}, Laez;->b(Landroid/view/ViewGroup;I)Lafy;

    move-result-object v0

    move-object v4, v0

    move v5, v3

    .line 4463
    :goto_4
    if-eqz v5, :cond_d

    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->a()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4, v8}, Lafy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4465
    invoke-virtual {v4, v2, v8}, Lafy;->a(II)V

    .line 4466
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-static {v0}, Lafv;->b(Lafv;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4467
    invoke-static {v4}, Lafd;->d(Lafy;)I

    move-result v0

    .line 4469
    or-int/lit16 v0, v0, 0x1000

    .line 4470
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    iget-object v6, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v4}, Lafy;->u()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v6, v4, v0, v7}, Lafd;->a(Lafv;Lafy;ILjava/util/List;)Lafg;

    move-result-object v0

    .line 4472
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;)V

    .line 4477
    :cond_d
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Lafy;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4479
    iput p1, v4, Lafy;->f:I

    move v3, v2

    .line 4495
    :goto_5
    iget-object v0, v4, Lafy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4497
    if-nez v0, :cond_11

    .line 4498
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 4499
    iget-object v6, v4, Lafy;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4506
    :goto_6
    iput-object v4, v0, Lafk;->a:Lafy;

    .line 4507
    if-eqz v5, :cond_13

    if-eqz v3, :cond_13

    :goto_7
    iput-boolean v1, v0, Lafk;->d:Z

    .line 4508
    iget-object v0, v4, Lafy;->a:Landroid/view/View;

    return-object v0

    .line 4480
    :cond_e
    invoke-virtual {v4}, Lafy;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Lafy;->o()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Lafy;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4485
    :cond_f
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0, p1}, Labu;->b(I)I

    move-result v0

    .line 4486
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v4, Lafy;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4487
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Laez;->b(Lafy;I)V

    .line 4488
    iget-object v0, v4, Lafy;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lafp;->d(Landroid/view/View;)V

    .line 4490
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4491
    iput p1, v4, Lafy;->f:I

    :cond_10
    move v3, v1

    goto :goto_5

    .line 4500
    :cond_11
    iget-object v6, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 4501
    iget-object v6, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 4502
    iget-object v6, v4, Lafy;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4504
    :cond_12
    check-cast v0, Lafk;

    goto :goto_6

    :cond_13
    move v1, v2

    .line 4507
    goto :goto_7

    :cond_14
    move v3, v2

    goto :goto_5

    :cond_15
    move-object v4, v0

    move v5, v3

    goto/16 :goto_4

    :cond_16
    move v3, v4

    goto/16 :goto_3

    :cond_17
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 4206
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4207
    invoke-virtual {p0}, Lafp;->c()V

    .line 4208
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 4216
    iput p1, p0, Lafp;->f:I

    .line 4218
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4219
    invoke-virtual {p0, v0}, Lafp;->c(I)V

    .line 4218
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4221
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 4933
    if-ge p1, p2, :cond_1

    .line 4936
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 4942
    :goto_0
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 4943
    :goto_1
    if-ge v4, v6, :cond_4

    .line 4944
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4945
    if-eqz v0, :cond_0

    iget v7, v0, Lafy;->b:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Lafy;->b:I

    if-le v7, v2, :cond_2

    .line 4943
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 4940
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 4948
    :cond_2
    iget v7, v0, Lafy;->b:I

    if-ne v7, p1, :cond_3

    .line 4949
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Lafy;->a(IZ)V

    goto :goto_2

    .line 4951
    :cond_3
    invoke-virtual {v0, v1, v5}, Lafy;->a(IZ)V

    goto :goto_2

    .line 4958
    :cond_4
    return-void
.end method

.method public a(Laez;Laez;Z)V
    .locals 1

    .prologue
    .line 4927
    invoke-virtual {p0}, Lafp;->a()V

    .line 4928
    invoke-virtual {p0}, Lafp;->f()Lafo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lafo;->a(Laez;Laez;Z)V

    .line 4929
    return-void
.end method

.method public a(Lafo;)V
    .locals 2

    .prologue
    .line 5007
    iget-object v0, p0, Lafp;->g:Lafo;

    if-eqz v0, :cond_0

    .line 5008
    iget-object v0, p0, Lafp;->g:Lafo;

    invoke-virtual {v0}, Lafo;->b()V

    .line 5010
    :cond_0
    iput-object p1, p0, Lafp;->g:Lafo;

    .line 5011
    if-eqz p1, :cond_1

    .line 5012
    iget-object v0, p0, Lafp;->g:Lafo;

    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Laez;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafo;->a(Laez;)V

    .line 5014
    :cond_1
    return-void
.end method

.method public a(Lafw;)V
    .locals 0

    .prologue
    .line 5003
    iput-object p1, p0, Lafp;->h:Lafw;

    .line 5004
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4565
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 4566
    invoke-virtual {v0}, Lafy;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4567
    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4569
    :cond_0
    invoke-virtual {v0}, Lafy;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4570
    invoke-virtual {v0}, Lafy;->j()V

    .line 4574
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lafp;->b(Lafy;)V

    .line 4575
    return-void

    .line 4571
    :cond_2
    invoke-virtual {v0}, Lafy;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4572
    invoke-virtual {v0}, Lafy;->l()V

    goto :goto_0
.end method

.method a(Lafy;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4243
    invoke-virtual {p1}, Lafy;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4248
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v0}, Lafv;->a()Z

    move-result v0

    .line 4264
    :cond_0
    :goto_0
    return v0

    .line 4250
    :cond_1
    iget v2, p1, Lafy;->b:I

    if-ltz v2, :cond_2

    iget v2, p1, Lafy;->b:I

    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v3

    invoke-virtual {v3}, Laez;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 4251
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4254
    :cond_3
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    invoke-virtual {v2}, Lafv;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4256
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v2

    iget v3, p1, Lafy;->b:I

    invoke-virtual {v2, v3}, Laez;->a(I)I

    move-result v2

    .line 4257
    invoke-virtual {p1}, Lafy;->h()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 4258
    goto :goto_0

    .line 4261
    :cond_4
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v2

    invoke-virtual {v2}, Laez;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4262
    invoke-virtual {p1}, Lafy;->g()J

    move-result-wide v2

    iget-object v4, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v4

    iget v5, p1, Lafy;->b:I

    invoke-virtual {v4, v5}, Laez;->b(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lafp;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lafy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4229
    iget-object v0, p0, Lafp;->e:Ljava/util/List;

    return-object v0
.end method

.method public b(II)V
    .locals 4

    .prologue
    .line 4961
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4962
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4963
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4964
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4969
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Lafy;->a(IZ)V

    .line 4962
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4972
    :cond_1
    return-void
.end method

.method public b(IIZ)V
    .locals 4

    .prologue
    .line 4981
    add-int v2, p1, p2

    .line 4982
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4983
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 4984
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4985
    if-eqz v0, :cond_0

    .line 4986
    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 4992
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Lafy;->a(IZ)V

    .line 4983
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4993
    :cond_1
    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4995
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lafy;->b(I)V

    .line 4996
    invoke-virtual {p0, v1}, Lafp;->c(I)V

    goto :goto_1

    .line 5000
    :cond_2
    return-void
.end method

.method public b(Lafy;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4623
    invoke-virtual {p1}, Lafy;->i()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lafy;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4624
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lafy;->i()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lafy;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4630
    :cond_2
    invoke-virtual {p1}, Lafy;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4635
    :cond_3
    invoke-virtual {p1}, Lafy;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4640
    :cond_4
    invoke-static {p1}, Lafy;->c(Lafy;)Z

    move-result v3

    .line 4642
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v2

    invoke-virtual {v2, p1}, Laez;->b(Lafy;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 4651
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p1}, Lafy;->w()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4652
    :cond_5
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lafy;->a(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 4655
    iget-object v2, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4656
    iget v4, p0, Lafp;->f:I

    if-ne v2, v4, :cond_6

    if-lez v2, :cond_6

    .line 4657
    invoke-virtual {p0, v1}, Lafp;->c(I)V

    .line 4659
    :cond_6
    iget v4, p0, Lafp;->f:I

    if-ge v2, v4, :cond_a

    .line 4660
    iget-object v2, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 4664
    :goto_2
    if-nez v2, :cond_9

    .line 4665
    invoke-virtual {p0, p1}, Lafp;->c(Lafy;)V

    move v1, v0

    move v0, v2

    .line 4674
    :goto_3
    iget-object v2, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v2, p1}, Lahi;->e(Lafy;)V

    .line 4675
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 4676
    const/4 v0, 0x0

    iput-object v0, p1, Lafy;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4678
    :cond_7
    return-void

    :cond_8
    move v2, v1

    .line 4642
    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4693
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 4694
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lafy;->a(Lafy;Lafp;)Lafp;

    .line 4695
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lafy;->a(Lafy;Z)Z

    .line 4696
    invoke-virtual {v0}, Lafy;->l()V

    .line 4697
    invoke-virtual {p0, v0}, Lafp;->b(Lafy;)V

    .line 4698
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 4587
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4588
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4589
    invoke-virtual {p0, v0}, Lafp;->c(I)V

    .line 4588
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4591
    :cond_0
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4592
    return-void
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4613
    invoke-virtual {p0, v0}, Lafp;->c(Lafy;)V

    .line 4614
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4615
    return-void
.end method

.method public c(II)V
    .locals 4

    .prologue
    .line 5024
    add-int v2, p1, p2

    .line 5025
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5026
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 5027
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 5028
    if-nez v0, :cond_1

    .line 5026
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5032
    :cond_1
    invoke-virtual {v0}, Lafy;->d()I

    move-result v3

    .line 5033
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 5034
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lafy;->b(I)V

    .line 5035
    invoke-virtual {p0, v1}, Lafp;->c(I)V

    goto :goto_1

    .line 5040
    :cond_2
    return-void
.end method

.method c(Lafy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4681
    iget-object v0, p1, Lafy;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lou;->a(Landroid/view/View;Lmg;)V

    .line 4682
    invoke-virtual {p0, p1}, Lafp;->e(Lafy;)V

    .line 4683
    iput-object v1, p1, Lafy;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4684
    invoke-virtual {p0}, Lafp;->f()Lafo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lafo;->a(Lafy;)V

    .line 4685
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4710
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lafy;

    move-result-object v0

    .line 4711
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lafy;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lafy;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Lafy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4713
    :cond_0
    invoke-virtual {v0}, Lafy;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lafy;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v1

    invoke-virtual {v1}, Laez;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4718
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lafy;->a(Lafp;Z)V

    .line 4719
    iget-object v1, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4727
    :goto_0
    return-void

    .line 4721
    :cond_2
    iget-object v1, p0, Lafp;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lafp;->d:Ljava/util/ArrayList;

    .line 4724
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lafy;->a(Lafp;Z)V

    .line 4725
    iget-object v1, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method d()I
    .locals 1

    .prologue
    .line 4747
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method d(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4751
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    iget-object v0, v0, Lafy;->a:Landroid/view/View;

    return-object v0
.end method

.method public d(Lafy;)V
    .locals 1

    .prologue
    .line 4736
    invoke-static {p1}, Lafy;->d(Lafy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4737
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4741
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lafy;->a(Lafy;Lafp;)Lafp;

    .line 4742
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lafy;->a(Lafy;Z)Z

    .line 4743
    invoke-virtual {p1}, Lafy;->l()V

    .line 4744
    return-void

    .line 4739
    :cond_0
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method e(I)Lafy;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 4764
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 4789
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 4768
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4769
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4770
    invoke-virtual {v0}, Lafy;->k()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lafy;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 4771
    invoke-virtual {v0, v10}, Lafy;->b(I)V

    goto :goto_0

    .line 4768
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4776
    :cond_3
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0}, Laez;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4777
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Labu;

    invoke-virtual {v0, p1}, Labu;->b(I)I

    move-result v0

    .line 4778
    if-lez v0, :cond_5

    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v3

    invoke-virtual {v3}, Laez;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 4779
    iget-object v3, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v3

    invoke-virtual {v3, v0}, Laez;->b(I)J

    move-result-wide v6

    .line 4780
    :goto_2
    if-ge v2, v4, :cond_5

    .line 4781
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 4782
    invoke-virtual {v0}, Lafy;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lafy;->g()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 4783
    invoke-virtual {v0, v10}, Lafy;->b(I)V

    goto :goto_0

    .line 4780
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 4789
    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 4755
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4756
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4757
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4759
    :cond_0
    return-void
.end method

.method e(Lafy;)V
    .locals 1

    .prologue
    .line 4913
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Lafq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4914
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Lafq;

    move-result-object v0

    invoke-interface {v0, p1}, Lafq;->a(Lafy;)V

    .line 4916
    :cond_0
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4917
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0, p1}, Laez;->a(Lafy;)V

    .line 4919
    :cond_1
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Lafv;

    if-eqz v0, :cond_2

    .line 4920
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Lahi;

    invoke-virtual {v0, p1}, Lahi;->e(Lafy;)V

    .line 4923
    :cond_2
    return-void
.end method

.method public f()Lafo;
    .locals 1

    .prologue
    .line 5017
    iget-object v0, p0, Lafp;->g:Lafo;

    if-nez v0, :cond_0

    .line 5018
    new-instance v0, Lafo;

    invoke-direct {v0}, Lafo;-><init>()V

    iput-object v0, p0, Lafp;->g:Lafo;

    .line 5020
    :cond_0
    iget-object v0, p0, Lafp;->g:Lafo;

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 5053
    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafp;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Laez;

    move-result-object v0

    invoke-virtual {v0}, Laez;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5054
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5055
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5056
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 5057
    if-eqz v0, :cond_0

    .line 5058
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lafy;->b(I)V

    .line 5059
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lafy;->a(Ljava/lang/Object;)V

    .line 5055
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5064
    :cond_1
    invoke-virtual {p0}, Lafp;->c()V

    .line 5066
    :cond_2
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5069
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5070
    :goto_0
    if-ge v2, v3, :cond_0

    .line 5071
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 5072
    invoke-virtual {v0}, Lafy;->a()V

    .line 5070
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5074
    :cond_0
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5075
    :goto_1
    if-ge v2, v3, :cond_1

    .line 5076
    iget-object v0, p0, Lafp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    invoke-virtual {v0}, Lafy;->a()V

    .line 5075
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5078
    :cond_1
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5079
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5080
    :goto_2
    if-ge v1, v2, :cond_2

    .line 5081
    iget-object v0, p0, Lafp;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    invoke-virtual {v0}, Lafy;->a()V

    .line 5080
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5084
    :cond_2
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 5087
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5088
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5089
    iget-object v0, p0, Lafp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 5090
    iget-object v0, v0, Lafy;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    .line 5091
    if-eqz v0, :cond_0

    .line 5092
    const/4 v3, 0x1

    iput-boolean v3, v0, Lafk;->c:Z

    .line 5088
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5095
    :cond_1
    return-void
.end method
