.class public Lcom/firebase/client/core/view/filter/RangedFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter;


# instance fields
.field private final endPost:Lcom/firebase/client/snapshot/NamedNode;

.field private final index:Lcom/firebase/client/snapshot/Index;

.field private final indexedFilter:Lcom/firebase/client/core/view/filter/IndexedFilter;

.field private final startPost:Lcom/firebase/client/snapshot/NamedNode;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/view/QueryParams;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/firebase/client/core/view/filter/IndexedFilter;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/view/filter/IndexedFilter;-><init>(Lcom/firebase/client/snapshot/Index;)V

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->indexedFilter:Lcom/firebase/client/core/view/filter/IndexedFilter;

    .line 19
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->index:Lcom/firebase/client/snapshot/Index;

    .line 20
    invoke-static {p1}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->startPost:Lcom/firebase/client/snapshot/NamedNode;

    .line 21
    invoke-static {p1}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->endPost:Lcom/firebase/client/snapshot/NamedNode;

    .line 22
    return-void
.end method

.method private static getEndPost(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndexEndName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndexEndValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/firebase/client/snapshot/Index;->makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/Index;->maxPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStartPost(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndexStartName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndexStartValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/firebase/client/snapshot/Index;->makePost(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/Index;->minPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public getEndPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->endPost:Lcom/firebase/client/snapshot/NamedNode;

    return-object v0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->indexedFilter:Lcom/firebase/client/core/view/filter/IndexedFilter;

    return-object v0
.end method

.method public getStartPost()Lcom/firebase/client/snapshot/NamedNode;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->startPost:Lcom/firebase/client/snapshot/NamedNode;

    return-object v0
.end method

.method public matches(Lcom/firebase/client/snapshot/NamedNode;)Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {p0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v0, p2, p3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->indexedFilter:Lcom/firebase/client/core/view/filter/IndexedFilter;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/IndexedFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/RangedFilter;->indexedFilter:Lcom/firebase/client/core/view/filter/IndexedFilter;

    invoke-virtual {v0, p1, v1, p3}, Lcom/firebase/client/core/view/filter/IndexedFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/snapshot/IndexedNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 77
    invoke-virtual {p0, v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 80
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 0

    .prologue
    .line 88
    return-object p1
.end method
