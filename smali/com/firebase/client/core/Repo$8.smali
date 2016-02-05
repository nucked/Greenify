.class Lcom/firebase/client/core/Repo$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$newValue:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/firebase/client/core/Repo$8;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$8;->val$path:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$8;->val$newValue:Lcom/firebase/client/snapshot/Node;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$8;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/firebase/client/core/Repo$8;->this$0:Lcom/firebase/client/core/Repo;

    const-string v1, "onDisconnect().setValue"

    iget-object v2, p0, Lcom/firebase/client/core/Repo$8;->val$path:Lcom/firebase/client/core/Path;

    # invokes: Lcom/firebase/client/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    invoke-static {v0, v1, v2, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 401
    if-nez p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/firebase/client/core/Repo$8;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;
    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$700(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SparseSnapshotTree;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$8;->val$path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$8;->val$newValue:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/SparseSnapshotTree;->remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo$8;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$8;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$8;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1, p1, v2}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    .line 405
    return-void
.end method
