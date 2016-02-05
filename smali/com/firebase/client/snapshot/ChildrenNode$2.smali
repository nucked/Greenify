.class Lcom/firebase/client/snapshot/ChildrenNode$2;
.super Lcom/firebase/client/collection/LLRBNode$NodeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/collection/LLRBNode$NodeVisitor",
        "<",
        "Lcom/firebase/client/snapshot/ChildKey;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# instance fields
.field passedPriorityKey:Z

.field final synthetic this$0:Lcom/firebase/client/snapshot/ChildrenNode;

.field final synthetic val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->this$0:Lcom/firebase/client/snapshot/ChildrenNode;

    iput-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V
    .locals 3

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/snapshot/ChildKey;->compareTo(Lcom/firebase/client/snapshot/ChildKey;)I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->passedPriorityKey:Z

    .line 251
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    invoke-static {}, Lcom/firebase/client/snapshot/ChildKey;->getPriorityKey()Lcom/firebase/client/snapshot/ChildKey;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->this$0:Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v2}, Lcom/firebase/client/snapshot/ChildrenNode;->getPriority()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;->visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$2;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;->visitChild(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    .line 254
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Lcom/firebase/client/snapshot/ChildKey;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$2;->visitEntry(Lcom/firebase/client/snapshot/ChildKey;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method
