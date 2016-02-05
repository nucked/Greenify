.class Lcom/firebase/client/core/SyncTree$10;
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


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$changedChildren:Ljava/util/Map;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$tag:Lcom/firebase/client/core/Tag;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/Path;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$10;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$10;->val$tag:Lcom/firebase/client/core/Tag;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$10;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$10;->val$changedChildren:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
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
    .line 371
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$10;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$10;->val$tag:Lcom/firebase/client/core/Tag;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$10;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v1, v2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v1

    .line 374
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$10;->val$changedChildren:Ljava/util/Map;

    invoke-static {v2}, Lcom/firebase/client/core/CompoundWrite;->fromPathMerge(Ljava/util/Map;)Lcom/firebase/client/core/CompoundWrite;

    move-result-object v2

    .line 375
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$10;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v3}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$10;->val$path:Lcom/firebase/client/core/Path;

    invoke-interface {v3, v4, v2}, Lcom/firebase/client/core/persistence/PersistenceManager;->updateServerCache(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    .line 376
    new-instance v3, Lcom/firebase/client/core/operation/Merge;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/core/operation/OperationSource;->forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/firebase/client/core/operation/Merge;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/CompoundWrite;)V

    .line 377
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$10;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->applyTaggedOperation(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    invoke-static {v1, v0, v3}, Lcom/firebase/client/core/SyncTree;->access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
