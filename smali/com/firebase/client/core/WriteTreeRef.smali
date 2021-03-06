.class public Lcom/firebase/client/core/WriteTreeRef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final treePath:Lcom/firebase/client/core/Path;

.field private final writeTree:Lcom/firebase/client/core/WriteTree;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTree;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    .line 33
    iput-object p2, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    .line 34
    return-void
.end method


# virtual methods
.method public calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1, p2}, Lcom/firebase/client/core/WriteTree;->calcCompleteChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Z)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/core/WriteTree;->calcCompleteEventChildren(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/firebase/client/core/WriteTree;->calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public calcNextNodeAfterPost(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 6

    .prologue
    .line 96
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/core/WriteTree;->calcNextNodeAfterPost(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/WriteTreeRef;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/firebase/client/core/WriteTreeRef;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/WriteTreeRef;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTree;)V

    return-object v0
.end method

.method public shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/firebase/client/core/WriteTreeRef;->writeTree:Lcom/firebase/client/core/WriteTree;

    iget-object v1, p0, Lcom/firebase/client/core/WriteTreeRef;->treePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/WriteTree;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method
