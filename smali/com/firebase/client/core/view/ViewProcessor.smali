.class public Lcom/firebase/client/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/firebase/client/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/firebase/client/core/view/ViewProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    .line 431
    new-instance v0, Lcom/firebase/client/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/firebase/client/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/view/filter/NodeFilter;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    .line 23
    return-void
.end method

.method private ackUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/firebase/client/core/WriteTreeRef;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/firebase/client/core/view/ViewCache;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p4, p2}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-object p1

    .line 339
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v6

    .line 343
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    .line 344
    invoke-virtual {p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 346
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    :cond_3
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    .line 353
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 354
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 356
    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 363
    :cond_6
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    .line 364
    invoke-virtual {p3}, Lcom/firebase/client/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Path;

    .line 366
    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 367
    invoke-virtual {v1, v4}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 368
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/firebase/client/core/CompoundWrite;->addWrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v3

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 371
    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 11

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-object p1

    .line 300
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 302
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    :goto_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v8

    .line 308
    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v9

    .line 309
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, p1

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    .line 311
    invoke-interface {v8, v4}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    invoke-interface {v8, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 314
    new-instance v2, Lcom/firebase/client/core/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_2

    .line 305
    :cond_3
    invoke-static {}, Lcom/firebase/client/core/CompoundWrite;->emptyWrite()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/firebase/client/core/CompoundWrite;->addWrites(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object p3

    goto :goto_1

    .line 317
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/firebase/client/snapshot/ChildKey;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/CompoundWrite;

    .line 320
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 321
    :goto_4
    invoke-interface {v8, v4}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    .line 322
    invoke-interface {v8, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/CompoundWrite;

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/CompoundWrite;->apply(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 324
    new-instance v2, Lcom/firebase/client/core/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/firebase/client/snapshot/ChildKey;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v0}, Lcom/firebase/client/core/Path;-><init>([Lcom/firebase/client/snapshot/ChildKey;)V

    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_3

    .line 320
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    move-object p1, v1

    .line 328
    goto/16 :goto_0
.end method

.method private applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 8

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v7

    .line 176
    if-eqz p6, :cond_2

    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    .line 177
    :goto_0
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 203
    :goto_1
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/firebase/client/core/view/ViewCache;->updateServerSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    .line 204
    new-instance v4, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v4, p4, v1, p5}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p7

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    :cond_1
    return-object p1

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/firebase/client/core/view/filter/NodeFilter;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_3
    invoke-interface {v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v1

    if-nez v1, :cond_5

    .line 181
    sget-boolean v1, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "An empty path should have been caught in the other branch"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 182
    :cond_4
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 184
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 185
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/firebase/client/snapshot/IndexedNode;->updateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 186
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_1

    .line 188
    :cond_5
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 189
    invoke-virtual {v7, p2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForPath(Lcom/firebase/client/core/Path;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 193
    :cond_6
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 194
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 195
    invoke-interface {v1, v4, p3}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 196
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 197
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    goto/16 :goto_1

    .line 199
    :cond_7
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    sget-object v5, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    goto/16 :goto_1

    .line 203
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private applyUserMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 8

    .prologue
    .line 266
    sget-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->rootWrite()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t have a merge that is an overwrite"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 268
    :cond_0
    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, p1

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/firebase/client/core/view/ViewProcessor;->cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p3}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v2}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/firebase/client/core/view/ViewProcessor;->cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    goto :goto_1

    .line 281
    :cond_4
    return-object v1
.end method

.method private applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 8

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v7

    .line 211
    new-instance v5, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v5, p4, p1, p5}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    .line 212
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0, p6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    .line 252
    :cond_0
    :goto_0
    return-object p1

    .line 217
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 220
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 223
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 225
    invoke-virtual {v4}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v3, p3

    .line 243
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 246
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 229
    :cond_4
    invoke-interface {v5, v2}, Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_6

    .line 231
    invoke-virtual {v4}, Lcom/firebase/client/core/Path;->getBack()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    :cond_5
    invoke-interface {v3, v4, p3}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    goto :goto_1

    .line 240
    :cond_6
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    goto :goto_1
.end method

.method private static cacheHasChild(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/ChildKey;)Z
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 106
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v8

    .line 107
    invoke-virtual {p3, p2}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-object p1

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    sget-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If change path is empty, we must have complete server data"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v1, :cond_3

    .line 122
    :goto_1
    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 126
    :goto_2
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v1}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0, p5}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 167
    :goto_3
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_2
    move v1, v7

    :goto_4
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    sget-boolean v0, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->size()I

    move-result v0

    if-eq v0, v7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t have a priority with additional path components"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 132
    :cond_6
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 135
    invoke-virtual {p3, p2, v0, v1}, Lcom/firebase/client/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    iget-object v1, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/firebase/client/core/view/filter/NodeFilter;->updatePriority(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    goto :goto_3

    .line 140
    :cond_7
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    goto :goto_3

    .line 143
    :cond_8
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 146
    invoke-virtual {v8, v2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 148
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p3, p2, v1, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_9

    .line 150
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_5
    move-object v3, v0

    .line 158
    :goto_6
    if-eqz v3, :cond_b

    .line 159
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    goto/16 :goto_3

    .line 153
    :cond_9
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_5

    .line 156
    :cond_a
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    goto :goto_6

    .line 163
    :cond_b
    invoke-virtual {v8}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    goto/16 :goto_3

    .line 167
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4
.end method

.method private listenComplete(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 6

    .prologue
    .line 423
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Lcom/firebase/client/core/view/ViewCache;->updateServerSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v1

    .line 425
    sget-object v4, Lcom/firebase/client/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v0

    return-object v0

    .line 424
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddValueEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Lcom/firebase/client/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 96
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteEventSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    :cond_2
    invoke-virtual {v1}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/Change;->valueChange(Lcom/firebase/client/snapshot/IndexedNode;)Lcom/firebase/client/core/view/Change;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    return-void

    .line 95
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOperation(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;
    .locals 17

    .prologue
    .line 36
    new-instance v8, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v8}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;-><init>()V

    .line 38
    sget-object v2, Lcom/firebase/client/core/view/ViewProcessor$2;->$SwitchMap$com$firebase$client$core$operation$Operation$OperationType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getType()Lcom/firebase/client/core/operation/Operation$OperationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/operation/Operation$OperationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 84
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getType()Lcom/firebase/client/core/operation/Operation$OperationType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 40
    :pswitch_0
    check-cast p2, Lcom/firebase/client/core/operation/Overwrite;

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getSnapshot()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    .line 87
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/client/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V

    .line 89
    new-instance v4, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;

    invoke-direct {v4, v2, v3}, Lcom/firebase/client/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/firebase/client/core/view/ViewCache;Ljava/util/List;)V

    return-object v4

    .line 44
    :cond_0
    sget-boolean v2, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isFromServer()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 48
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isTagged()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v15, 0x1

    .line 50
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Overwrite;->getSnapshot()Lcom/firebase/client/snapshot/Node;

    move-result-object v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerOverwrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto :goto_0

    .line 48
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 56
    :pswitch_1
    check-cast p2, Lcom/firebase/client/core/operation/Merge;

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getChildren()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/firebase/client/core/view/ViewProcessor;->applyUserMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto/16 :goto_0

    .line 60
    :cond_4
    sget-boolean v2, Lcom/firebase/client/core/view/ViewProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isFromServer()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 62
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getSource()Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/operation/OperationSource;->isTagged()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/CacheNode;->isFiltered()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v15, 0x1

    .line 64
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Merge;->getChildren()Lcom/firebase/client/core/CompoundWrite;

    move-result-object v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/firebase/client/core/view/ViewProcessor;->applyServerMerge(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;ZLcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto/16 :goto_0

    .line 62
    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    .line 70
    :pswitch_2
    check-cast p2, Lcom/firebase/client/core/operation/AckUserWrite;

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/AckUserWrite;->isRevert()Z

    move-result v2

    if-nez v2, :cond_8

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/AckUserWrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/AckUserWrite;->getAffectedTree()Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/firebase/client/core/view/ViewProcessor;->ackUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto/16 :goto_0

    .line 75
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/AckUserWrite;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/firebase/client/core/view/ViewProcessor;->revertUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto/16 :goto_0

    .line 80
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/core/operation/Operation;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/firebase/client/core/view/ViewProcessor;->listenComplete(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;

    move-result-object v2

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public revertUserWrite(Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/core/view/ViewCache;
    .locals 7

    .prologue
    .line 377
    invoke-virtual {p3, p2}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return-object p1

    .line 380
    :cond_0
    new-instance v5, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v5, p3, p1, p4}, Lcom/firebase/client/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/ViewCache;Lcom/firebase/client/snapshot/Node;)V

    .line 381
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getIndexedNode()Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 383
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 390
    :goto_1
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 391
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2, v1, v0, p5}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 417
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->shadowingWrite(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_3
    const/4 v0, 0x1

    .line 418
    :goto_3
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/firebase/client/core/view/ViewCache;->updateEventSnap(Lcom/firebase/client/snapshot/IndexedNode;ZZ)Lcom/firebase/client/core/view/ViewCache;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_1

    .line 393
    :cond_5
    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v2

    .line 394
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/view/CacheNode;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 395
    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/view/CacheNode;->isCompleteForChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    invoke-virtual {v1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 398
    :cond_6
    if-eqz v3, :cond_8

    .line 399
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    .line 408
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/firebase/client/snapshot/IndexedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getServerCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getCompleteServerSnap()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/firebase/client/core/WriteTreeRef;->calcCompleteEventCache(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2}, Lcom/firebase/client/core/view/filter/NodeFilter;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-interface {v2, v1, v0, p5}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateFullNode(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    goto/16 :goto_2

    .line 401
    :cond_8
    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/firebase/client/core/view/ViewCache;->getEventCache()Lcom/firebase/client/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 403
    iget-object v0, p0, Lcom/firebase/client/core/view/ViewProcessor;->filter:Lcom/firebase/client/core/view/filter/NodeFilter;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/firebase/client/core/view/filter/NodeFilter;->updateChild(Lcom/firebase/client/snapshot/IndexedNode;Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/filter/NodeFilter$CompleteChildSource;Lcom/firebase/client/core/view/filter/ChildChangeAccumulator;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_4

    .line 417
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3
.end method
