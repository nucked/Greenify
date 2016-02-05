.class Lcom/firebase/client/core/SyncTree$4;
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


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$4;->call()Ljava/util/List;

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
    const/4 v4, 0x1

    .line 224
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/core/persistence/PersistenceManager;->removeAllUserWrites()V

    .line 225
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->pendingWriteTree:Lcom/firebase/client/core/WriteTree;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$300(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/WriteTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/WriteTree;->purgeAllWrites()Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 229
    :cond_0
    new-instance v0, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$4;->this$0:Lcom/firebase/client/core/SyncTree;

    new-instance v2, Lcom/firebase/client/core/operation/AckUserWrite;

    invoke-static {}, Lcom/firebase/client/core/Path;->getEmptyPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v2, v3, v0, v4}, Lcom/firebase/client/core/operation/AckUserWrite;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/ImmutableTree;Z)V

    # invokes: Lcom/firebase/client/core/SyncTree;->applyOperationToSyncPoints(Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/firebase/client/core/SyncTree;->access$400(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
