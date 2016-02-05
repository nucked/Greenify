.class public Lcom/firebase/client/core/persistence/TrackedQueryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/firebase/client/utilities/Clock;

.field private currentQueryId:J

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private final storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

.field private trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->$assertionsDisabled:Z

    .line 19
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager$1;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$1;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    .line 27
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager$2;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$2;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    .line 35
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager$3;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$3;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    .line 42
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager$4;

    invoke-direct {v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$4;-><init>()V

    sput-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/utilities/LogWrapper;Lcom/firebase/client/utilities/Clock;)V
    .locals 6

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 73
    iput-object p1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    .line 74
    iput-object p2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 75
    iput-object p3, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->clock:Lcom/firebase/client/utilities/Clock;

    .line 76
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 78
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->resetPreviouslyActiveTrackedQueries()V

    .line 81
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 83
    iget-wide v2, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 84
    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/firebase/client/core/utilities/Predicate;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/firebase/client/core/persistence/TrackedQueryManager;Lcom/firebase/client/core/persistence/TrackedQuery;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    return-void
.end method

.method private static assertValidTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 64
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cacheTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V
    .locals 6

    .prologue
    .line 328
    iget-object v0, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-static {v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->assertValidTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 330
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v1, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 331
    if-nez v0, :cond_2

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    iget-object v2, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v1

    iput-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    move-object v1, v0

    .line 337
    :goto_0
    iget-object v0, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 338
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    iget-wide v4, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->hardAssert(Z)V

    .line 340
    iget-object v0, p1, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static calculateCountToPrune(Lcom/firebase/client/core/persistence/CachePolicy;J)J
    .locals 5

    .prologue
    .line 217
    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0}, Lcom/firebase/client/core/persistence/CachePolicy;->getPercentOfQueriesToPruneAtOnce()F

    move-result v1

    sub-float/2addr v0, v1

    .line 221
    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 224
    invoke-interface {p0}, Lcom/firebase/client/core/persistence/CachePolicy;->getMaxNumberOfQueriesToKeep()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 227
    sub-long v0, p1, v0

    return-wide v0
.end method

.method private filteredQueryIdsAtPath(Lcom/firebase/client/core/Path;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 316
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 317
    if-eqz v0, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 319
    iget-object v3, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    iget-wide v4, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_1
    return-object v1
.end method

.method private getQueriesMatching(Lcom/firebase/client/core/utilities/Predicate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Predicate",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 352
    invoke-interface {p1, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_2
    return-object v1
.end method

.method private includedInDefaultCompleteQuery(Lcom/firebase/client/core/Path;)Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Lcom/firebase/client/core/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalizeQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private resetPreviouslyActiveTrackedQueries()V
    .locals 4

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->beginTransaction()V

    .line 93
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->clock:Lcom/firebase/client/utilities/Clock;

    invoke-interface {v1}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->resetPreviouslyActiveTrackedQueries(J)V

    .line 94
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->endTransaction()V

    throw v0
.end method

.method private saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    .line 345
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    .line 346
    return-void
.end method

.method private setQueryActiveFlag(Lcom/firebase/client/core/view/QuerySpec;Z)V
    .locals 8

    .prologue
    .line 128
    invoke-static {p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v3}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->clock:Lcom/firebase/client/utilities/Clock;

    invoke-interface {v1}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v4

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, v4, v5}, Lcom/firebase/client/core/persistence/TrackedQuery;->updateLastUse(J)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/persistence/TrackedQuery;->setActiveState(Z)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 140
    :goto_0
    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    .line 141
    return-void

    .line 136
    :cond_0
    sget-boolean v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If we\'re setting the query to inactive, we should already be tracking it!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    goto :goto_0
.end method


# virtual methods
.method public countOfPrunableQueries()J
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/firebase/client/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public ensureCompleteTrackedQuery(Lcom/firebase/client/core/Path;)V
    .locals 8

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-static {p1}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    .line 265
    invoke-virtual {p0, v3}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 266
    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->currentQueryId:J

    iget-object v4, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->clock:Lcom/firebase/client/utilities/Clock;

    invoke-interface {v4}, Lcom/firebase/client/utilities/Clock;->millis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/firebase/client/core/persistence/TrackedQuery;-><init>(JLcom/firebase/client/core/view/QuerySpec;JZZ)V

    .line 272
    :goto_0
    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    .line 274
    :cond_0
    return-void

    .line 269
    :cond_1
    sget-boolean v1, Lcom/firebase/client/core/persistence/TrackedQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should have been handled above!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 270
    :cond_2
    invoke-virtual {v0}, Lcom/firebase/client/core/persistence/TrackedQuery;->setComplete()Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    goto :goto_0
.end method

.method public findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;
    .locals 3

    .prologue
    .line 101
    invoke-static {p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKnownCompleteChildren(Lcom/firebase/client/core/Path;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    sget-boolean v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->isQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Path is fully complete."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 239
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 241
    invoke-direct {p0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->filteredQueryIdsAtPath(Lcom/firebase/client/core/Path;)Ljava/util/Set;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1, v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildKey;

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 251
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/firebase/client/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/firebase/client/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_3
    return-object v2
.end method

.method public hasActiveDefaultQuery(Lcom/firebase/client/core/Path;)Z
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    sget-object v1, Lcom/firebase/client/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 174
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    iget-boolean v0, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public pruneOldQueries(Lcom/firebase/client/core/persistence/CachePolicy;)Lcom/firebase/client/core/persistence/PruneForest;
    .locals 8

    .prologue
    .line 180
    sget-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/firebase/client/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->calculateCountToPrune(Lcom/firebase/client/core/persistence/CachePolicy;J)J

    move-result-wide v4

    .line 182
    new-instance v1, Lcom/firebase/client/core/persistence/PruneForest;

    invoke-direct {v1}, Lcom/firebase/client/core/persistence/PruneForest;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruning old queries.  Prunable: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " Count to prune: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager$6;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$6;-><init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    int-to-long v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    .line 195
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 196
    iget-object v6, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v6}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/firebase/client/core/persistence/PruneForest;->prune(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v1

    .line 197
    iget-object v0, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->removeTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 194
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 201
    :cond_1
    long-to-int v0, v4

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 202
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 203
    iget-object v0, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/persistence/PruneForest;->keep(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v2

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 207
    :cond_2
    sget-object v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/firebase/client/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/firebase/client/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unprunable queries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 209
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/persistence/TrackedQuery;

    .line 210
    iget-object v0, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->querySpec:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/persistence/PruneForest;->keep(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v2

    goto :goto_2

    .line 213
    :cond_4
    return-object v2
.end method

.method public removeTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 6

    .prologue
    .line 107
    invoke-static {p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 109
    sget-boolean v2, Lcom/firebase/client/core/persistence/TrackedQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Query must exist to be removed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-wide v4, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-interface {v2, v4, v5}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->deleteTrackedQuery(J)V

    .line 112
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 113
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->remove(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 117
    :cond_1
    return-void
.end method

.method public setQueriesComplete(Lcom/firebase/client/core/Path;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/persistence/TrackedQueryManager$5;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$5;-><init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 164
    return-void
.end method

.method public setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/firebase/client/core/view/QuerySpec;Z)V

    .line 121
    return-void
.end method

.method public setQueryCompleteIfExists(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/firebase/client/core/persistence/TrackedQuery;->setComplete()Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/firebase/client/core/persistence/TrackedQuery;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/firebase/client/core/view/QuerySpec;Z)V

    .line 125
    return-void
.end method

.method verifyCache()V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v2, p0, Lcom/firebase/client/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/firebase/client/core/utilities/ImmutableTree;

    new-instance v3, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;

    invoke-direct {v3, p0, v1}, Lcom/firebase/client/core/persistence/TrackedQueryManager$7;-><init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/utilities/ImmutableTree;->foreach(Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 298
    new-instance v2, Lcom/firebase/client/core/persistence/TrackedQueryManager$8;

    invoke-direct {v2, p0}, Lcom/firebase/client/core/persistence/TrackedQueryManager$8;-><init>(Lcom/firebase/client/core/persistence/TrackedQueryManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracked queries out of sync.  Tracked queries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Stored queries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/firebase/client/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 307
    return-void
.end method
