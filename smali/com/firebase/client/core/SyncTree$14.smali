.class Lcom/firebase/client/core/SyncTree$14;
.super Lcom/firebase/client/collection/LLRBNode$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        "Lcom/firebase/client/core/utilities/ImmutableTree",
        "<",
        "Lcom/firebase/client/core/SyncPoint;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$operation:Lcom/firebase/client/core/operation/Operation;

.field final synthetic val$resolvedServerCache:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$writesCache:Lcom/firebase/client/core/WriteTreeRef;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;Lcom/firebase/client/core/operation/Operation;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$14;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$14;->val$resolvedServerCache:Lcom/firebase/client/snapshot/Node;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$14;->val$writesCache:Lcom/firebase/client/core/WriteTreeRef;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$14;->val$operation:Lcom/firebase/client/core/operation/Operation;

    iput-object p5, p0, Lcom/firebase/client/core/SyncTree$14;->val$events:Ljava/util/List;

    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/ChildKey;",
            "Lcom/firebase/client/core/utilities/ImmutableTree",
            "<",
            "Lcom/firebase/client/core/SyncPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$14;->val$resolvedServerCache:Lcom/firebase/client/snapshot/Node;

    if-eqz v1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$14;->val$resolvedServerCache:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$14;->val$writesCache:Lcom/firebase/client/core/WriteTreeRef;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/WriteTreeRef;->child(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/WriteTreeRef;

    move-result-object v1

    .line 825
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$14;->val$operation:Lcom/firebase/client/core/operation/Operation;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/operation/Operation;->operationForChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/operation/Operation;

    move-result-object v2

    .line 826
    if-eqz v2, :cond_1

    .line 827
    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$14;->val$events:Ljava/util/List;

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$14;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->applyOperationDescendantsHelper(Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;
    invoke-static {v4, v2, p2, v0, v1}, Lcom/firebase/client/core/SyncTree;->access$1700(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/operation/Operation;Lcom/firebase/client/core/utilities/ImmutableTree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/WriteTreeRef;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 829
    :cond_1
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 817
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    check-cast p2, Lcom/firebase/client/core/utilities/ImmutableTree;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/SyncTree$14;->visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/core/utilities/ImmutableTree;)V

    return-void
.end method
