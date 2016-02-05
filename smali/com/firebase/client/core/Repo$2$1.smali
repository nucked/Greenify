.class Lcom/firebase/client/core/Repo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/core/Repo$2;

.field final synthetic val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

.field final synthetic val$query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo$2;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$2$1;->val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v0, v0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;
    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$100(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v1, v1, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->infoSyncTree:Lcom/firebase/client/core/SyncTree;
    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/Repo$2$1;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/firebase/client/core/SyncTree;->applyServerOverwrite(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/firebase/client/core/Repo$2$1;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v1, v1, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2$1;->val$onComplete:Lcom/firebase/client/core/SyncTree$CompletionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/firebase/client/core/SyncTree$CompletionListener;->onListenComplete(Lcom/firebase/client/FirebaseError;)Ljava/util/List;

    .line 106
    :cond_0
    return-void
.end method
