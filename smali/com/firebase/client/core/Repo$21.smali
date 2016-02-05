.class Lcom/firebase/client/core/Repo$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeVisitor",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;I)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/firebase/client/core/Repo$21;->this$0:Lcom/firebase/client/core/Repo;

    iput p2, p0, Lcom/firebase/client/core/Repo$21;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/firebase/client/core/Repo$21;->this$0:Lcom/firebase/client/core/Repo;

    iget v1, p0, Lcom/firebase/client/core/Repo$21;->val$reason:I

    # invokes: Lcom/firebase/client/core/Repo;->abortTransactionsAtNode(Lcom/firebase/client/core/utilities/Tree;I)V
    invoke-static {v0, p1, v1}, Lcom/firebase/client/core/Repo;->access$2900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;I)V

    .line 1045
    return-void
.end method
