.class public Lcom/firebase/client/core/view/filter/LimitedFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;

.field private final limit:I

.field private final rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

.field private final reverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/firebase/client/core/view/filter/LimitedFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/view/QueryParams;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/view/filter/RangedFilter;-><init>(Lcom/firebase/client/core/view/QueryParams;)V

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    .line 21
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    .line 22
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    .line 23
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->isViewFromLeft()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fullLimitUpdateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    sget-boolean v0, Lcom/firebase/client/core/view/filter/LimitedFilter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    iget v3, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    new-instance v4, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v4, p2, p3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 46
    iget-boolean v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getFirstChild()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v5

    .line 48
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 49
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 50
    iget-object v3, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v7, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {p4, v3, v0, v7}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    move-object v3, v0

    .line 51
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v7, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {p4, v0, v3, v7}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/snapshot/NamedNode;Z)Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getLastChild()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_3
    if-nez v3, :cond_6

    move v0, v1

    .line 59
    :goto_2
    if-eqz v5, :cond_7

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    if-ltz v0, :cond_7

    move v0, v1

    .line 60
    :goto_3
    if-eqz v0, :cond_8

    .line 61
    if-eqz p5, :cond_4

    .line 62
    invoke-static {p2, p3, v6}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 64
    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    .line 94
    :cond_5
    :goto_4
    return-object p1

    .line 58
    :cond_6
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v7, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v0, v3, v4, v7}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 59
    goto :goto_3

    .line 66
    :cond_8
    if-eqz p5, :cond_9

    .line 67
    invoke-static {p2, v6}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 69
    :cond_9
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    .line 70
    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 71
    :goto_5
    if-eqz v0, :cond_5

    .line 72
    if-eqz p5, :cond_a

    .line 73
    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 75
    :cond_a
    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v3}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_4

    :cond_b
    move v0, v2

    .line 70
    goto :goto_5

    .line 80
    :cond_c
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 83
    if-eqz v5, :cond_5

    .line 84
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    iget-boolean v2, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v1, v0, v4, v2}, Lcom/firebase/client/snapshot/Index;->compare(Lcom/firebase/client/snapshot/NamedNode;Lcom/firebase/client/snapshot/NamedNode;Z)I

    move-result v1

    if-ltz v1, :cond_5

    .line 85
    if-eqz p5, :cond_d

    .line 86
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 87
    invoke-static {p2, p3}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/Change;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/firebase/client/core/view/Change;)V

    .line 89
    :cond_d
    invoke-virtual {p1, p2, p3}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto/16 :goto_4
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public getIndex()Lcom/firebase/client/snapshot/Index;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 7

    .prologue
    .line 29
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v1, p2, p3}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/filter/RangedFilter;->matches(Lcom/firebase/client/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_1
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-ge v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/filter/LimitedFilter;->fullLimitUpdateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object v3, p3

    goto :goto_0
.end method

.method public updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 101
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v9

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    invoke-interface {v0, p1, v9, p3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/snapshot/IndexedNode;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v6

    .line 112
    iget-boolean v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v4

    .line 115
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v3

    .line 116
    const/4 v0, -0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v0

    :goto_0
    move v8, v7

    move-object v9, v6

    move v6, v7

    .line 126
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 128
    if-nez v6, :cond_3

    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v10, v5, v0}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_3

    move v6, v2

    .line 132
    :cond_3
    if-eqz v6, :cond_5

    iget v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->limit:I

    if-ge v8, v10, :cond_5

    iget-object v10, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v10, v0, v4}, Lcom/firebase/client/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_5

    move v10, v2

    .line 133
    :goto_2
    if-eqz v10, :cond_6

    .line 134
    add-int/lit8 v0, v8, 0x1

    move-object v8, v9

    :goto_3
    move-object v9, v8

    move v8, v0

    .line 138
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p2}, Lcom/firebase/client/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/filter/RangedFilter;->getStartPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v3

    .line 120
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/LimitedFilter;->rangedFilter:Lcom/firebase/client/core/view/filter/RangedFilter;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/filter/RangedFilter;->getEndPost()Lcom/firebase/client/snapshot/NamedNode;

    move-result-object v1

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move-object v3, v0

    .line 121
    goto :goto_0

    :cond_5
    move v10, v7

    .line 132
    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v9

    move v0, v8

    move-object v8, v9

    goto :goto_3
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 0

    .prologue
    .line 146
    return-object p1
.end method
