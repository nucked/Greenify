.class Lbmf;
.super Lbma;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblr",
        "<TK;TV;>.bma;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lblr;


# direct methods
.method constructor <init>(Lblr;Ljava/lang/Object;Ljava/util/SortedSet;Lbma;)V
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
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lblr",
            "<TK;TV;>.bma;)V"
        }
    .end annotation

    .prologue
    .line 632
    iput-object p1, p0, Lbmf;->a:Lblr;

    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lbma;-><init>(Lblr;Ljava/lang/Object;Ljava/util/Collection;Lbma;)V

    .line 634
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0}, Lbmf;->a()V

    .line 648
    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Lbmf;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Lbmf;->a()V

    .line 660
    new-instance v0, Lbmf;

    iget-object v1, p0, Lbmf;->a:Lblr;

    invoke-virtual {p0}, Lbmf;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lbmf;-><init>(Lblr;Ljava/lang/Object;Ljava/util/SortedSet;Lbma;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Lbmf;->a()V

    .line 654
    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Lbmf;->a()V

    .line 668
    new-instance v0, Lbmf;

    iget-object v1, p0, Lbmf;->a:Lblr;

    invoke-virtual {p0}, Lbmf;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lbmf;-><init>(Lblr;Ljava/lang/Object;Ljava/util/SortedSet;Lbma;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lbmf;->a()V

    .line 676
    new-instance v0, Lbmf;

    iget-object v1, p0, Lbmf;->a:Lblr;

    invoke-virtual {p0}, Lbmf;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lbmf;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lbmf;-><init>(Lblr;Ljava/lang/Object;Ljava/util/SortedSet;Lbma;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbmf;->f()Lbma;

    move-result-object p0

    goto :goto_0
.end method
