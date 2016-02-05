.class Lbme;
.super Lbma;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblr",
        "<TK;TV;>.bma;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lblr;


# direct methods
.method constructor <init>(Lblr;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 602
    iput-object p1, p0, Lbme;->a:Lblr;

    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbma;-><init>(Lblr;Ljava/lang/Object;Ljava/util/Collection;Lbma;)V

    .line 604
    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 608
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x0

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lbme;->size()I

    move-result v1

    .line 616
    iget-object v0, p0, Lbme;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, Lbor;->a(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    iget-object v2, p0, Lbme;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 619
    iget-object v3, p0, Lbme;->a:Lblr;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lblr;->a(Lblr;I)I

    .line 620
    invoke-virtual {p0}, Lbme;->b()V

    goto :goto_0
.end method
