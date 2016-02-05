.class Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/firebase/client/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;->iterator:Ljava/util/Iterator;

    .line 35
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    new-instance v2, Lcom/firebase/client/snapshot/NamedNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v2, v1, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;->next()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$NamedNodeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    return-void
.end method
