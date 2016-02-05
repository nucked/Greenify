.class Lbmc;
.super Lbma;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblr",
        "<TK;TV;>.bma;",
        "Ljava/util/List",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lblr;


# direct methods
.method constructor <init>(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lbma;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lblr",
            "<TK;TV;>.bma;)V"
        }
    .end annotation

    .prologue
    .line 760
    iput-object p1, p0, Lbmc;->g:Lblr;

    .line 761
    invoke-direct {p0, p1, p2, p3, p4}, Lbma;-><init>(Lblr;Ljava/lang/Object;Ljava/util/Collection;Lbma;)V

    .line 762
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p0}, Lbmc;->a()V

    .line 800
    invoke-virtual {p0}, Lbmc;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 801
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lbmc;->g:Lblr;

    invoke-static {v1}, Lblr;->c(Lblr;)I

    .line 803
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lbmc;->d()V

    .line 806
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 770
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    const/4 v0, 0x0

    .line 782
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    invoke-virtual {p0}, Lbmc;->size()I

    move-result v1

    .line 774
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 775
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lbmc;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 777
    iget-object v3, p0, Lbmc;->g:Lblr;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lblr;->a(Lblr;I)I

    .line 778
    if-nez v1, :cond_0

    .line 779
    invoke-virtual {p0}, Lbmc;->d()V

    goto :goto_0
.end method

.method g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p0}, Lbmc;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lbmc;->a()V

    .line 788
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lbmc;->a()V

    .line 820
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lbmc;->a()V

    .line 826
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p0}, Lbmc;->a()V

    .line 832
    new-instance v0, Lbmd;

    invoke-direct {v0, p0}, Lbmd;-><init>(Lbmc;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Lbmc;->a()V

    .line 838
    new-instance v0, Lbmd;

    invoke-direct {v0, p0, p1}, Lbmd;-><init>(Lbmc;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0}, Lbmc;->a()V

    .line 811
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lbmc;->g:Lblr;

    invoke-static {v1}, Lblr;->b(Lblr;)I

    .line 813
    invoke-virtual {p0}, Lbmc;->b()V

    .line 814
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Lbmc;->a()V

    .line 794
    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Lbmc;->a()V

    .line 844
    iget-object v0, p0, Lbmc;->g:Lblr;

    invoke-virtual {p0}, Lbmc;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lbmc;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lbmc;->f()Lbma;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0, v1, v2, p0}, Lblr;->a(Lblr;Ljava/lang/Object;Ljava/util/List;Lbma;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbmc;->f()Lbma;

    move-result-object p0

    goto :goto_0
.end method
