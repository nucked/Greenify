.class Lcom/firebase/client/core/SyncTree$8;
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

.field final synthetic val$tag:Lcom/firebase/client/core/Tag;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$8;->val$tag:Lcom/firebase/client/core/Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
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
    .line 323
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$8;->val$tag:Lcom/firebase/client/core/Tag;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForTag(Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v0, v1}, Lcom/firebase/client/core/SyncTree;->access$500(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/Tag;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v1}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryComplete(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 326
    new-instance v1, Lcom/firebase/client/core/operation/ListenComplete;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/core/operation/OperationSource;->forServerTaggedQuery(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/operation/OperationSource;

    move-result-object v2

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/core/operation/ListenComplete;-><init>(Lcom/firebase/client/core/operation/OperationSource;Lcom/firebase/client/core/Path;)V

    .line 327
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$8;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->applyTaggedOperation(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    invoke-static {v2, v0, v1}, Lcom/firebase/client/core/SyncTree;->access$600(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
