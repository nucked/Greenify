.class Lcom/firebase/client/core/SparseSnapshotTree$1;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SparseSnapshotTree;

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SparseSnapshotTree;Lcom/firebase/client/core/Path;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/firebase/client/core/SparseSnapshotTree$1;->this$0:Lcom/firebase/client/core/SparseSnapshotTree;

    iput-object p2, p0, Lcom/firebase/client/core/SparseSnapshotTree$1;->val$path:Lcom/firebase/client/core/Path;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/firebase/client/core/SparseSnapshotTree$1;->this$0:Lcom/firebase/client/core/SparseSnapshotTree;

    iget-object v1, p0, Lcom/firebase/client/core/SparseSnapshotTree$1;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/Path;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/firebase/client/core/SparseSnapshotTree;->remember(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 73
    return-void
.end method
