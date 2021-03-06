.class public Lcom/firebase/client/core/persistence/DefaultPersistenceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/persistence/PersistenceManager;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cachePolicy:Lcom/firebase/client/core/persistence/CachePolicy;

.field private final logger:Lcom/firebase/client/utilities/LogWrapper;

.field private serverCacheUpdatesSinceLastPruneCheck:J

.field private final storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

.field private final trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/core/persistence/CachePolicy;)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/firebase/client/utilities/DefaultClock;

    invoke-direct {v0}, Lcom/firebase/client/utilities/DefaultClock;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/core/persistence/CachePolicy;Lcom/firebase/client/utilities/Clock;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/core/persistence/CachePolicy;Lcom/firebase/client/utilities/Clock;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 33
    iput-object p2, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    .line 34
    const-string v0, "Persistence"

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 35
    new-instance v0, Lcom/firebase/client/core/persistence/TrackedQueryManager;

    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-object v2, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-direct {v0, v1, v2, p4}, Lcom/firebase/client/core/persistence/TrackedQueryManager;-><init>(Lcom/firebase/client/core/persistence/PersistenceStorageEngine;Lcom/firebase/client/utilities/LogWrapper;Lcom/firebase/client/utilities/Clock;)V

    iput-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    .line 36
    iput-object p3, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/firebase/client/core/persistence/CachePolicy;

    .line 37
    return-void
.end method

.method private doPruneCheckAfterServerUpdate()V
    .locals 8

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 218
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/firebase/client/core/persistence/CachePolicy;

    iget-wide v2, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    invoke-interface {v0, v2, v3}, Lcom/firebase/client/core/persistence/CachePolicy;->shouldCheckCacheSize(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Reached prune check threshold."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 220
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->serverCacheUpdatesSinceLastPruneCheck:J

    .line 221
    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v0

    .line 223
    iget-object v3, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v3}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    :cond_1
    move-wide v6, v0

    move v0, v2

    move-wide v2, v6

    .line 224
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/firebase/client/core/persistence/CachePolicy;

    iget-object v4, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v4}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->countOfPrunableQueries()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/firebase/client/core/persistence/CachePolicy;->shouldPrune(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    iget-object v2, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->cachePolicy:Lcom/firebase/client/core/persistence/CachePolicy;

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->pruneOldQueries(Lcom/firebase/client/core/persistence/CachePolicy;)Lcom/firebase/client/core/persistence/PruneForest;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/firebase/client/core/persistence/PruneForest;->prunesAnything()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->pruneCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/persistence/PruneForest;)V

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->serverCacheEstimatedSizeInBytes()J

    move-result-wide v2

    .line 232
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache size after prune: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 235
    :cond_4
    return-void
.end method


# virtual methods
.method public applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/firebase/client/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public applyUserWriteToServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->hasActiveDefaultQuery(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->overwriteServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 86
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->ensureCompleteTrackedQuery(Lcom/firebase/client/core/Path;)V

    .line 88
    :cond_0
    return-void
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->loadUserWrites()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllUserWrites()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->removeAllUserWrites()V

    .line 73
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->removeUserWrite(J)V

    .line 68
    return-void
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->beginTransaction()V

    .line 206
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->endTransaction()V

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->endTransaction()V

    throw v0
.end method

.method public saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->saveUserMerge(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;J)V

    .line 59
    return-void
.end method

.method public saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->saveUserOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;J)V

    .line 48
    return-void
.end method

.method public serverCache(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/CacheNode;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->isQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->complete:Z

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-wide v4, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v4, v5}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->loadTrackedQueryKeys(J)Ljava/util/Set;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->serverCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 135
    if-eqz v0, :cond_3

    .line 136
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v3

    .line 137
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    .line 138
    invoke-interface {v4, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    move-object v3, v0

    .line 139
    goto :goto_2

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->getKnownCompleteChildren(Lcom/firebase/client/core/Path;)Ljava/util/Set;

    move-result-object v0

    move v1, v3

    goto :goto_1

    .line 140
    :cond_2
    new-instance v0, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    .line 142
    :goto_3
    return-object v0

    :cond_3
    new-instance v0, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v2

    invoke-direct {v0, v2, v1, v3}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    goto :goto_3
.end method

.method public setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 166
    return-void
.end method

.method public setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueriesComplete(Lcom/firebase/client/core/Path;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueryCompleteIfExists(Lcom/firebase/client/core/view/QuerySpec;)V

    goto :goto_0
.end method

.method public setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 171
    return-void
.end method

.method public setTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    sget-boolean v0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "We should only track keys for filtered queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 186
    sget-boolean v1, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "We only expect tracked keys for currently-active queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->saveTrackedQueryKeys(JLjava/util/Set;)V

    .line 190
    return-void
.end method

.method public updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    .line 160
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->doPruneCheckAfterServerUpdate()V

    .line 161
    return-void
.end method

.method public updateServerCache(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->overwriteServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 154
    invoke-direct {p0}, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->doPruneCheckAfterServerUpdate()V

    .line 155
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->mergeIntoServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    goto :goto_0
.end method

.method public updateTrackedQueryKeys(Lcom/firebase/client/core/view/QuerySpec;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QuerySpec;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/firebase/client/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    sget-boolean v0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "We should only track keys for filtered queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->trackedQueryManager:Lcom/firebase/client/core/persistence/TrackedQueryManager;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/persistence/TrackedQuery;

    move-result-object v0

    .line 196
    sget-boolean v1, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->active:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "We only expect tracked keys for currently-active queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/firebase/client/core/persistence/DefaultPersistenceManager;->storageLayer:Lcom/firebase/client/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/firebase/client/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/firebase/client/core/persistence/PersistenceStorageEngine;->updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V

    .line 200
    return-void
.end method
