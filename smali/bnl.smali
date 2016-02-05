.class Lbnl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation
.end field

.field final b:Lbkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkl",
            "<-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lbkl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Lbkl",
            "<-TF;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 601
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lbnl;->a:Ljava/util/List;

    .line 602
    invoke-static {p2}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkl;

    iput-object v0, p0, Lbnl;->b:Lbkl;

    .line 603
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 606
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lbnl;->b:Lbkl;

    iget-object v1, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lbnl;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Lbnm;

    iget-object v1, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbnm;-><init>(Lbnl;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lbnl;->b:Lbkl;

    iget-object v1, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lbnl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
