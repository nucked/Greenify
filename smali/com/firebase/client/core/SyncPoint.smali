.class public Lcom/firebase/client/core/SyncPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

.field private final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncPoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/persistence/PersistenceManager;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/firebase/client/core/SyncPoint;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    .line 43
    return-void
.end method

.method private applyOperationToView(Lcom/firebase/client/core/view/View;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/View;",
            "Lcom/firebase/client/core/operation/Operation;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1, p2, p3, p4}, Lcom/firebase/client/core/view/View;->applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/View$OperationResult;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 54
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 55
    iget-object v0, v1, Lcom/firebase/client/core/view/View$OperationResult;->changes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/Change;

    .line 56
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/view/Event$EventType;

    move-result-object v5

    .line 57
    sget-object v6, Lcom/firebase/client/core/view/Event$EventType;->CHILD_ADDED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v5, v6, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    sget-object v6, Lcom/firebase/client/core/view/Event$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/view/Event$EventType;

    if-ne v5, v6, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/firebase/client/core/view/Change;->getChildKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-interface {v0, v4, v3, v2}, Lcom/firebase/client/core/persistence/PersistenceManager;->updateTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V

    .line 67
    :cond_4
    iget-object v0, v1, Lcom/firebase/client/core/view/View$OperationResult;->events:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/CacheNode;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/EventRegistration;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            "Lcom/firebase/client/core/view/CacheNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    .line 92
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 93
    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p3}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    const/4 v0, 0x1

    .line 103
    :goto_1
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    .line 104
    new-instance v4, Lcom/firebase/client/core/view/ViewCache;

    new-instance v5, Lcom/firebase/client/core/view/CacheNode;

    invoke-direct {v5, v2, v0, v1}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    invoke-direct {v4, v5, p3}, Lcom/firebase/client/core/view/ViewCache;-><init>(Lcom/firebase/client/core/view/CacheNode;Lcom/firebase/client/core/view/CacheNode;)V

    .line 105
    new-instance v1, Lcom/firebase/client/core/view/View;

    invoke-direct {v1, v3, v4}, Lcom/firebase/client/core/view/View;-><init>(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/ViewCache;)V

    .line 107
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 109
    invoke-virtual {v1}, Lcom/firebase/client/core/view/View;->getEventCache()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 110
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p3}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 101
    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;

    invoke-interface {v0, v3, v2}, Lcom/firebase/client/core/persistence/PersistenceManager;->setTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;)V

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 118
    :cond_4
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/View;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/View;->getInitialEvents(Lcom/firebase/client/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public applyOperation(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/operation/Operation;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/firebase/client/core/operation/Operation;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/operation/OperationSource;->getQueryParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 74
    sget-boolean v1, Lcom/firebase/client/core/SyncPoint;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/SyncPoint;->applyOperationToView(Lcom/firebase/client/core/view/View;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 80
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/SyncPoint;->applyOperationToView(Lcom/firebase/client/core/view/View;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method public getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 191
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/View;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/View;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompleteView()Lcom/firebase/client/core/view/View;
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 217
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 182
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    return-object v1
.end method

.method getViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    return-object v0
.end method

.method public hasCompleteView()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncPoint;->getCompleteView()Lcom/firebase/client/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/utilities/Pair;
    .locals 6
    .param p1    # Lcom/firebase/client/core/view/QuerySpec;
        .annotation build Lcom/firebase/client/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/firebase/client/core/EventRegistration;
        .annotation build Lcom/firebase/client/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/firebase/client/FirebaseError;
        .annotation build Lcom/firebase/client/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Lcom/firebase/client/core/EventRegistration;",
            "Lcom/firebase/client/FirebaseError;",
            ")",
            "Lcom/firebase/client/utilities/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/QuerySpec;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v3

    .line 139
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 145
    invoke-virtual {v0, p2, p3}, Lcom/firebase/client/core/view/View;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 150
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0, p2, p3}, Lcom/firebase/client/core/view/View;->removeEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_2

    .line 165
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    new-instance v0, Lcom/firebase/client/utilities/Pair;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public viewExistsForQuery(Lcom/firebase/client/core/view/QuerySpec;)Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/SyncPoint;->viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncPoint;->getCompleteView()Lcom/firebase/client/core/view/View;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/SyncPoint;->views:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    goto :goto_0
.end method
