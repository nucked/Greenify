.class public Lcom/firebase/client/core/ServerValues;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAME_SUBKEY_SERVERVALUE:Ljava/lang/String; = ".sv"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateServerValues(Lcom/firebase/client/utilities/Clock;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/utilities/Clock;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    const-string v1, "timestamp"

    invoke-interface {p0}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method

.method public static resolveDeferredValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 26
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 27
    check-cast v0, Ljava/util/Map;

    .line 28
    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    :cond_0
    return-object p0
.end method

.method public static resolveDeferredValueMerge(Lcom/firebase/client/core/CompoundWrite;Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/CompoundWrite;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/CompoundWrite;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-static {v0, p1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    move-object v2, v0

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    return-object v2
.end method

.method public static resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 51
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 52
    check-cast v0, Ljava/util/Map;

    .line 53
    const-string v2, ".sv"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string v1, ".sv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :cond_0
    invoke-static {v1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 60
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    :cond_1
    invoke-static {v1, v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    .line 83
    :cond_2
    :goto_0
    return-object p0

    .line 66
    :cond_3
    invoke-interface {p0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    check-cast p0, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 70
    new-instance v1, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/SnapshotHolder;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 71
    new-instance v2, Lcom/firebase/client/core/ServerValues$2;

    invoke-direct {v2, p1, v1}, Lcom/firebase/client/core/ServerValues$2;-><init>(Ljava/util/Map;Lcom/firebase/client/core/SnapshotHolder;)V

    invoke-virtual {p0, v2}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 80
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    goto :goto_0
.end method

.method public static resolveDeferredValueTree(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/firebase/client/core/SparseSnapshotTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/SparseSnapshotTree;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/firebase/client/core/SparseSnapshotTree;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v0}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    .line 40
    new-instance v1, Lcom/firebase/client/core/Path;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/firebase/client/core/ServerValues$1;

    invoke-direct {v2, v0, p1}, Lcom/firebase/client/core/ServerValues$1;-><init>(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 46
    return-object v0
.end method
