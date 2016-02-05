.class Lcom/firebase/client/core/Repo$16;
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


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/firebase/client/core/Repo$16;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 1
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
    .line 855
    iget-object v0, p0, Lcom/firebase/client/core/Repo$16;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    invoke-static {v0, p1}, Lcom/firebase/client/core/Repo;->access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    .line 856
    return-void
.end method
