.class public Lcom/firebase/client/collection/RBTreeSortedMap;
.super Lcom/firebase/client/collection/ImmutableSortedMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field

.field private root:Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    .line 22
    iput-object p2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;Lcom/firebase/client/collection/RBTreeSortedMap$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/collection/RBTreeSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>()V

    .line 16
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    .line 17
    iput-object p1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 18
    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/RBTreeSortedMap",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p0, p1, p2, p3}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/firebase/client/collection/RBTreeSortedMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->identityTranslator()Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/firebase/client/collection/RBTreeSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/RBTreeSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private getNode(Ljava/lang/Object;)Lcom/firebase/client/collection/LLRBNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    .line 32
    :goto_0
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 34
    if-gez v1, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    if-nez v1, :cond_1

    .line 42
    :goto_1
    return-object v0

    .line 39
    :cond_1
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/RBTreeSortedMap;->getNode(Ljava/lang/Object;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/firebase/client/collection/RBTreeSortedMap;->getNode(Ljava/lang/Object;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMax()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMinKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    move-object v0, v2

    .line 123
    :goto_0
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 124
    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 125
    if-nez v3, :cond_3

    .line 126
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    .line 128
    :goto_1
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_0
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 135
    :cond_1
    :goto_2
    return-object v2

    .line 132
    :cond_2
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 137
    :cond_3
    if-gez v3, :cond_4

    .line 138
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_4
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 144
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find predecessor key of non-present key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRoot()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    return-object v0
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    move-object v0, v2

    .line 151
    :goto_0
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 152
    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 153
    if-nez v3, :cond_3

    .line 154
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    .line 156
    :goto_1
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 163
    :cond_1
    :goto_2
    return-object v2

    .line 160
    :cond_2
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 165
    :cond_3
    if-gez v3, :cond_4

    .line 166
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_4
    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 172
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find successor key of non-present key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 97
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2, v2}, Lcom/firebase/client/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/firebase/client/collection/RBTreeSortedMap;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Lcom/firebase/client/collection/RBTreeSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/client/collection/ImmutableSortedMapIterator;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/firebase/client/collection/ImmutableSortedMapIterator;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/firebase/client/collection/RBTreeSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, v2}, Lcom/firebase/client/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    .line 63
    new-instance v0, Lcom/firebase/client/collection/RBTreeSortedMap;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/collection/RBTreeSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/client/collection/ImmutableSortedMapIterator;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    iget-object v2, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/firebase/client/collection/ImmutableSortedMapIterator;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/firebase/client/collection/RBTreeSortedMap;->root:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->count()I

    move-result v0

    return v0
.end method
