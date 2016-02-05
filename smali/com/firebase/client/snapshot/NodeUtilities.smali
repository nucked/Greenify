.class public Lcom/firebase/client/snapshot/NodeUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public static NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 8

    .prologue
    .line 17
    :try_start_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_10

    .line 18
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 19
    const-string v3, ".priority"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    const-string v3, ".priority"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 23
    :cond_0
    const-string v3, ".value"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 24
    const-string v3, ".value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    .line 28
    :goto_0
    if-nez v2, :cond_1

    .line 29
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v2

    .line 81
    :goto_1
    return-object v2

    .line 30
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 31
    new-instance v3, Lcom/firebase/client/snapshot/StringNode;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    goto :goto_1

    .line 32
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 33
    new-instance v3, Lcom/firebase/client/snapshot/LongNode;

    check-cast v2, Ljava/lang/Long;

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    goto :goto_1

    .line 34
    :cond_3
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 35
    new-instance v3, Lcom/firebase/client/snapshot/LongNode;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    goto :goto_1

    .line 36
    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_5

    .line 37
    new-instance v3, Lcom/firebase/client/snapshot/DoubleNode;

    check-cast v2, Ljava/lang/Double;

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    goto :goto_1

    .line 38
    :cond_5
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    .line 39
    new-instance v3, Lcom/firebase/client/snapshot/BooleanNode;

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    goto :goto_1

    .line 40
    :cond_6
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_7

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 43
    :cond_7
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_b

    .line 44
    check-cast v2, Ljava/util/Map;

    .line 45
    const-string v3, ".sv"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 46
    new-instance v3, Lcom/firebase/client/snapshot/DeferredValueNode;

    invoke-direct {v3, v2, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/firebase/client/snapshot/Node;)V

    move-object v2, v3

    .line 47
    goto :goto_1

    .line 49
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 52
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 55
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 56
    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 57
    invoke-static {v3}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    .line 58
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v2

    .line 87
    new-instance v3, Lcom/firebase/client/FirebaseException;

    const-string v4, "Failed to parse node"

    invoke-direct {v3, v4, v2}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_a
    move-object v2, v4

    .line 76
    :goto_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 77
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v2

    goto/16 :goto_1

    .line 64
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    const/4 v4, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 70
    invoke-static {v5}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v5

    .line 71
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 79
    :cond_d
    sget-object v3, Lcom/firebase/client/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v3

    .line 81
    new-instance v2, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v2, v3, p1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/snapshot/Node;)V

    goto/16 :goto_1

    .line 84
    :cond_e
    new-instance v3, Lcom/firebase/client/FirebaseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse node with class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    move-object v2, v3

    goto :goto_3

    :cond_10
    move-object v2, p0

    goto/16 :goto_0
.end method

.method public static nameAndPriorityCompare(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)I
    .locals 1

    .prologue
    .line 94
    invoke-interface {p1, p3}, Lcom/firebase/client/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    goto :goto_0
.end method
