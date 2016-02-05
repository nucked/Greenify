.class public Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final changeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public trackChildChange(Lcom/firebase/client/core/view/Change;)V
    .locals 5

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 23
    sget-boolean v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Only child changes supported for tracking"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 24
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 27
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v3

    .line 28
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v4, :cond_2

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_2

    .line 29
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    return-void

    .line 30
    :cond_2
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v4, :cond_3

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_3

    .line 31
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_3
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v4, :cond_4

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_4

    .line 33
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/firebase/client/core/view/Change;->childRemovedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_4
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v4, :cond_5

    .line 35
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/firebase/client/core/view/Change;->childAddedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_5
    sget-object v4, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v1, v4, :cond_6

    sget-object v1, Lcom/firebase/client/core/view/Event$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v3, v1, :cond_6

    .line 37
    iget-object v1, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getOldIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/firebase/client/core/view/Change;->childChangedChange(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal combination of changes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurred after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->changeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
