.class Lbmd;
.super Lbmb;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblr",
        "<TK;TV;>.bma.bmb;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lbmc;


# direct methods
.method constructor <init>(Lbmc;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lbmd;->d:Lbmc;

    invoke-direct {p0, p1}, Lbmb;-><init>(Lbma;)V

    return-void
.end method

.method public constructor <init>(Lbmc;I)V
    .locals 1

    .prologue
    .line 854
    iput-object p1, p0, Lbmd;->d:Lbmc;

    .line 855
    invoke-virtual {p1}, Lbmc;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbmb;-><init>(Lbma;Ljava/util/Iterator;)V

    .line 856
    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lbmd;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lbmd;->d:Lbmc;

    invoke-virtual {v0}, Lbmc;->isEmpty()Z

    move-result v0

    .line 890
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 891
    iget-object v1, p0, Lbmd;->d:Lbmc;

    iget-object v1, v1, Lbmc;->g:Lblr;

    invoke-static {v1}, Lblr;->c(Lblr;)I

    .line 892
    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lbmd;->d:Lbmc;

    invoke-virtual {v0}, Lbmc;->d()V

    .line 895
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 874
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 879
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 884
    invoke-direct {p0}, Lbmd;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 885
    return-void
.end method
