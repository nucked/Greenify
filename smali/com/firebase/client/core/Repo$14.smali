.class Lcom/firebase/client/core/Repo$14;
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
    .line 732
    iput-object p1, p0, Lcom/firebase/client/core/Repo$14;->this$0:Lcom/firebase/client/core/Repo;

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
    .line 735
    iget-object v0, p0, Lcom/firebase/client/core/Repo$14;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    invoke-static {v0, p1}, Lcom/firebase/client/core/Repo;->access$1700(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    .line 736
    return-void
.end method
