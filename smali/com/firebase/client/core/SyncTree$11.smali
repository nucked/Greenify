.class Lcom/firebase/client/core/SyncTree$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/firebase/client/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$eventRegistration:Lcom/firebase/client/core/EventRegistration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    const-class v0, Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncTree$11;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/EventRegistration;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v8

    .line 393
    invoke-virtual {v8}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 395
    const/4 v4, 0x0

    .line 401
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    move-object v5, v6

    move-object v7, v0

    move v3, v2

    .line 403
    :goto_0
    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 404
    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SyncPoint;

    .line 405
    if-eqz v0, :cond_12

    .line 406
    if-eqz v4, :cond_1

    .line 408
    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_2
    move-object v3, v4

    .line 410
    :goto_3
    invoke-virtual {v5}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-static {v4}, Lcom/firebase/client/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    .line 411
    :goto_4
    invoke-virtual {v7, v4}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    .line 412
    invoke-virtual {v5}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    move v3, v0

    .line 413
    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {v0, v5}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v0, v2

    .line 408
    goto :goto_2

    .line 410
    :cond_3
    invoke-virtual {v5}, Lcom/firebase/client/core/Path;->getFront()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v4

    goto :goto_4

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SyncPoint;

    .line 417
    if-nez v0, :cond_5

    .line 418
    new-instance v0, Lcom/firebase/client/core/SyncPoint;

    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/firebase/client/core/SyncPoint;-><init>(Lcom/firebase/client/core/persistence/PersistenceManager;)V

    .line 419
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v7, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v7}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->set(Lcom/firebase/client/core/Path;Ljava/lang/Object;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    # setter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v5, v7}, Lcom/firebase/client/core/SyncTree;->access$702(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    .line 425
    :goto_5
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryActive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 428
    if-eqz v0, :cond_9

    .line 429
    new-instance v5, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v0

    invoke-direct {v5, v0, v1, v2}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    move-object v0, v5

    .line 457
    :goto_6
    invoke-virtual {v3, v8}, Lcom/firebase/client/core/SyncPoint;->viewExistsForQuery(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v1

    .line 458
    if-nez v1, :cond_f

    invoke-virtual {v8}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-nez v2, :cond_f

    .line 460
    sget-boolean v2, Lcom/firebase/client/core/SyncTree$11;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$800(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "View does not exist but we have a tag"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 421
    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v1

    .line 422
    :goto_7
    if-eqz v4, :cond_8

    :goto_8
    move-object v11, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v11

    goto :goto_5

    :cond_7
    move v3, v2

    .line 421
    goto :goto_7

    .line 422
    :cond_8
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    goto :goto_8

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/firebase/client/core/persistence/PersistenceManager;->serverCache(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/CacheNode;

    move-result-object v7

    .line 433
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v7

    .line 434
    goto :goto_6

    .line 436
    :cond_a
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/EmptyNode;

    move-result-object v5

    .line 437
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChildren()Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/SyncPoint;

    .line 440
    if-eqz v1, :cond_11

    .line 441
    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/firebase/client/core/SyncPoint;->getCompleteServerCache(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_11

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/ChildKey;

    invoke-interface {v5, v0, v1}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    :goto_a
    move-object v5, v0

    .line 446
    goto :goto_9

    .line 448
    :cond_b
    invoke-virtual {v7}, Lcom/firebase/client/core/view/CacheNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/NamedNode;

    .line 449
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/firebase/client/snapshot/Node;->hasChild(Lcom/firebase/client/snapshot/ChildKey;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 450
    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getName()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v7

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/NamedNode;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v5, v7, v0}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    goto :goto_b

    .line 453
    :cond_d
    new-instance v0, Lcom/firebase/client/core/view/CacheNode;

    invoke-virtual {v8}, Lcom/firebase/client/core/view/QuerySpec;->getIndex()Lcom/firebase/client/snapshot/Index;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Index;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/firebase/client/core/view/CacheNode;-><init>(Lcom/firebase/client/snapshot/IndexedNode;ZZ)V

    goto/16 :goto_6

    .line 461
    :cond_e
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->getNextQueryTag()Lcom/firebase/client/core/Tag;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$900(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/Tag;

    move-result-object v2

    .line 462
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->queryToTagMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree;->access$800(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->tagToQueryMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree;->access$1000(Lcom/firebase/client/core/SyncTree;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_f
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/firebase/client/core/WriteTree;->childWrites(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v2

    .line 466
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$11;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v3, v5, v2, v0}, Lcom/firebase/client/core/SyncPoint;->addEventRegistration(Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/view/CacheNode;)Ljava/util/List;

    move-result-object v0

    .line 467
    if-nez v1, :cond_10

    if-nez v4, :cond_10

    .line 468
    invoke-virtual {v3, v8}, Lcom/firebase/client/core/SyncPoint;->viewForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/View;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$11;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->setupListener(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V
    invoke-static {v2, v8, v1}, Lcom/firebase/client/core/SyncTree;->access$1100(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/view/View;)V

    .line 471
    :cond_10
    return-object v0

    :cond_11
    move-object v0, v5

    goto :goto_a

    :cond_12
    move v0, v3

    move-object v3, v4

    goto/16 :goto_3
.end method
