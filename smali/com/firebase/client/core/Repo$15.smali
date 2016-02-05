.class Lcom/firebase/client/core/Repo$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$queue:Ljava/util/List;

.field final synthetic val$repo:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/List;Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 773
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    const-string v1, "Transaction"

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    # invokes: Lcom/firebase/client/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V
    invoke-static {v0, v1, v2, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Ljava/lang/String;Lcom/firebase/client/core/Path;Lcom/firebase/client/FirebaseError;)V

    .line 774
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 776
    if-nez p1, :cond_1

    .line 777
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 778
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo$TransactionData;

    .line 779
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    # setter for: Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;
    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 780
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->serverSyncTree:Lcom/firebase/client/core/SyncTree;
    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SyncTree;

    move-result-object v1

    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->currentWriteId:J
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->serverClock:Lcom/firebase/client/utilities/OffsetClock;
    invoke-static {v5}, Lcom/firebase/client/core/Repo;->access$2000(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/OffsetClock;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/core/SyncTree;->ackUserWrite(JZZLcom/firebase/client/utilities/Clock;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/firebase/client/snapshot/Node;
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1400(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 784
    new-instance v2, Lcom/firebase/client/DataSnapshot;

    new-instance v3, Lcom/firebase/client/Firebase;

    iget-object v5, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    invoke-static {v1}, Lcom/firebase/client/snapshot/IndexedNode;->from(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/IndexedNode;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/IndexedNode;)V

    .line 786
    new-instance v1, Lcom/firebase/client/core/Repo$15$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/firebase/client/core/Repo$15$1;-><init>(Lcom/firebase/client/core/Repo$15;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/DataSnapshot;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/core/ValueEventRegistration;

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->outstandingListener:Lcom/firebase/client/ValueEventListener;
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v5

    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1900(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/firebase/client/core/ValueEventRegistration;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/view/QuerySpec;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/core/EventRegistration;)V

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    # getter for: Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;
    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$2300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    # invokes: Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo;->access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    .line 801
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V
    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$2500(Lcom/firebase/client/core/Repo;)V

    .line 803
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$repo:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->postEvents(Ljava/util/List;)V
    invoke-static {v0, v7}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    .line 806
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 807
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 806
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 811
    :cond_1
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 812
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo$TransactionData;

    .line 813
    # getter for: Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1500(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v2

    sget-object v3, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v2, v3, :cond_2

    .line 814
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    # setter for: Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;
    invoke-static {v0, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    goto :goto_2

    .line 816
    :cond_2
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    # setter for: Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;
    invoke-static {v0, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    goto :goto_2

    .line 820
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo$TransactionData;

    .line 821
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    # setter for: Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;
    invoke-static {v0, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1502(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 822
    # setter for: Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;
    invoke-static {v0, p1}, Lcom/firebase/client/core/Repo$TransactionData;->access$2602(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;

    goto :goto_3

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    # invokes: Lcom/firebase/client/core/Repo;->rerunTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo;->access$1000(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 829
    :cond_5
    return-void
.end method
