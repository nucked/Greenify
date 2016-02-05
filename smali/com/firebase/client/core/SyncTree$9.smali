.class Lcom/firebase/client/core/SyncTree$9;
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

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$snap:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$tag:Lcom/firebase/client/core/Tag;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$9;->val$tag:Lcom/firebase/client/core/Tag;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$9;->call()Ljava/util/List;

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
    .line 350
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$9;->val$tag:Lcom/firebase/client/core/Tag;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v0, v2}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v3}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3, v0, v4}, Lcom/firebase/client/core/persistence/PersistenceManager;->updateServerCache(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/snapshot/Node;)V

    .line 355
    new-instance v0, Lcom/firebase/client/core/operation/Overwrite;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-static {v3}, Lcom/firebase/client/core/operation/OperationSource;->forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$9;->val$snap:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v3, v2, v4}, Lcom/firebase/client/core/operation/Overwrite;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 356
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$9;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->applyTaggedOperation(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    invoke-static {v2, v1, v0}, Lcom/firebase/client/core/SyncTree;->access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    .line 359
    :goto_1
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$9;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
