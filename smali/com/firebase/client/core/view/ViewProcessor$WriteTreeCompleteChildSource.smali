.class Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

.field private final viewCache:Lcom/firebase/client/core/view/ViewCache;

.field private final writes:Lcom/firebase/client/core/WriteTreeRef;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    .line 454
    iput-object p2, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    .line 455
    iput-object p3, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    .line 456
    return-void
.end method


# virtual methods
.method public getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/firebase/client/core/WriteTreeRef;->calcNextNodeAfterPost(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/NamedNode;ZLcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    .line 461
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Lcom/firebase/client/core/view/CacheNode;

    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 471
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/firebase/client/core/WriteTreeRef;

    invoke-virtual {v1, p1, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/firebase/client/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    goto :goto_1
.end method
