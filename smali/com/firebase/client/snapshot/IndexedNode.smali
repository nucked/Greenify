.class public Lcom/firebase/client/snapshot/IndexedNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/firebase/client/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedSet",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:Lcom/firebase/client/snapshot/Index;

.field private indexed:Lcom/firebase/client/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedSet",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    .line 29
    iput-object p1, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/collection/ImmutableSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/snapshot/Index;",
            "Lcom/firebase/client/collection/ImmutableSortedSet",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    .line 36
    iput-object p1, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    .line 37
    iput-object p3, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    .line 38
    return-void
.end method

.method private ensureIndexed()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    iput-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 49
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/firebase/client/snapshot/Index;->isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 50
    :goto_2
    new-instance v5, Lcom/firebase/client/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 51
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v2

    .line 49
    goto :goto_2

    .line 53
    :cond_4
    if-eqz v1, :cond_5

    .line 54
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedSet;

    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-direct {v0, v3, v1}, Lcom/firebase/client/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    goto :goto_0

    .line 56
    :cond_5
    sget-object v0, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    iput-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    goto :goto_0
.end method

.method public static from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/firebase/client/snapshot/IndexedNode;

    invoke-static {}, Lcom/firebase/client/snapshot/PriorityIndex;->getInstance()Lcom/firebase/client/snapshot/PriorityIndex;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)V

    return-object v0
.end method

.method public static from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/firebase/client/snapshot/IndexedNode;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)V

    return-object v0
.end method


# virtual methods
.method public getFirstChild()Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    instance-of v0, v0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/snapshot/IndexedNode;->ensureIndexed()V

    .line 123
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getFirstChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 125
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    iget-object v2, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2, v1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedSet;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    goto :goto_0
.end method

.method public getLastChild()Lcom/firebase/client/snapshot/NamedNode;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    instance-of v0, v0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/snapshot/IndexedNode;->ensureIndexed()V

    .line 137
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getLastChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 139
    new-instance v0, Lcom/firebase/client/snapshot/NamedNode;

    iget-object v2, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2, v1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedSet;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    goto :goto_0
.end method

.method public getNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public getPredecessorChildName(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/ChildKey;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-static {}, Lcom/firebase/client/snapshot/KeyIndex;->getInstance()Lcom/firebase/client/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/snapshot/IndexedNode;->ensureIndexed()V

    .line 151
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildKey(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v1, p1, p2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedSet;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 155
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIndex(Lcom/firebase/client/snapshot/Index;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/firebase/client/snapshot/IndexedNode;->ensureIndexed()V

    .line 80
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/firebase/client/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/firebase/client/snapshot/IndexedNode;->ensureIndexed()V

    .line 89
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedSet;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 98
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-virtual {v0, p2}, Lcom/firebase/client/snapshot/Index;->isDefinedOn(Lcom/firebase/client/snapshot/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/firebase/client/snapshot/IndexedNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    sget-object v3, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-direct {v0, v2, v1, v3}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/collection/ImmutableSortedSet;)V

    .line 110
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    sget-object v1, Lcom/firebase/client/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/firebase/client/collection/ImmutableSortedSet;

    if-ne v0, v1, :cond_2

    .line 103
    :cond_1
    new-instance v0, Lcom/firebase/client/snapshot/IndexedNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/collection/ImmutableSortedSet;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    new-instance v3, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v3, p1, v0}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {v1, v3}, Lcom/firebase/client/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedSet;

    move-result-object v0

    .line 107
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    new-instance v1, Lcom/firebase/client/snapshot/NamedNode;

    invoke-direct {v1, p1, p2}, Lcom/firebase/client/snapshot/NamedNode;-><init>(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedSet;

    move-result-object v0

    .line 110
    :cond_3
    new-instance v1, Lcom/firebase/client/snapshot/IndexedNode;

    iget-object v3, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    invoke-direct {v1, v2, v3, v0}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/collection/ImmutableSortedSet;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/firebase/client/snapshot/IndexedNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/IndexedNode;->node:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/snapshot/IndexedNode;->index:Lcom/firebase/client/snapshot/Index;

    iget-object v3, p0, Lcom/firebase/client/snapshot/IndexedNode;->indexed:Lcom/firebase/client/collection/ImmutableSortedSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/snapshot/IndexedNode;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;Lcom/firebase/client/collection/ImmutableSortedSet;)V

    return-object v0
.end method
