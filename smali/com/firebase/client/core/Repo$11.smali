.class Lcom/firebase/client/core/Repo$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$events:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$11;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/firebase/client/core/Repo$11;->val$events:Ljava/util/List;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;
    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 518
    iget-object v0, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    const/16 v1, -0x9

    # invokes: Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;
    invoke-static {v0, p1, v1}, Lcom/firebase/client/core/Repo;->access$900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;I)Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    invoke-static {v1, v0}, Lcom/firebase/client/core/Repo;->access$1000(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 520
    return-void
.end method
