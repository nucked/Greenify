.class Lcom/firebase/client/core/SyncTree$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/firebase/client/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;

.field final synthetic val$cancelError:Lcom/firebase/client/FirebaseError;

.field final synthetic val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

.field final synthetic val$query:Lcom/firebase/client/core/view/QuerySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 497
    const-class v0, Lcom/firebase/client/core/SyncTree;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/SyncTree$12;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    iput-object p2, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    iput-object p3, p0, Lcom/firebase/client/core/SyncTree$12;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    iput-object p4, p0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/firebase/client/core/SyncTree$12;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/view/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v8

    .line 501
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v0}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/firebase/client/core/utilities/ImmutableTree;->get(Lcom/firebase/client/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/SyncPoint;

    .line 502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 506
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/SyncPoint;->viewExistsForQuery(Lcom/firebase/client/core/view/QuerySpec;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->val$eventRegistration:Lcom/firebase/client/core/EventRegistration;

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/SyncPoint;->removeEventRegistration(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/EventRegistration;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/utilities/Pair;

    move-result-object v1

    .line 511
    invoke-virtual {v0}, Lcom/firebase/client/core/SyncPoint;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/firebase/client/core/utilities/ImmutableTree;->remove(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    # setter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v0, v2}, Lcom/firebase/client/core/SyncTree;->access$702(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    .line 514
    :cond_1
    invoke-virtual {v1}, Lcom/firebase/client/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 515
    invoke-virtual {v1}, Lcom/firebase/client/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QuerySpec;

    .line 524
    iget-object v7, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->persistenceManager:Lcom/firebase/client/core/persistence/PersistenceManager;
    invoke-static {v7}, Lcom/firebase/client/core/SyncTree;->access$200(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/persistence/PersistenceManager;

    move-result-object v7

    iget-object v9, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    invoke-interface {v7, v9}, Lcom/firebase/client/core/persistence/PersistenceManager;->setQueryInactive(Lcom/firebase/client/core/view/QuerySpec;)V

    .line 525
    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/firebase/client/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    move v3, v2

    .line 526
    goto :goto_0

    :cond_3
    move v2, v4

    .line 525
    goto :goto_1

    .line 527
    :cond_4
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v6

    .line 528
    invoke-virtual {v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual {v2}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    .line 529
    :goto_2
    invoke-virtual {v8}, Lcom/firebase/client/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v6

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/ChildKey;

    .line 530
    invoke-virtual {v7, v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->getChild(Lcom/firebase/client/snapshot/ChildKey;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v7

    .line 531
    if-nez v6, :cond_5

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/SyncPoint;

    invoke-virtual {v2}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    move v2, v5

    .line 532
    :goto_4
    if-nez v2, :cond_f

    invoke-virtual {v7}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v2

    .line 537
    :cond_6
    :goto_5
    if-eqz v3, :cond_a

    if-nez v6, :cond_a

    .line 538
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->syncPointTree:Lcom/firebase/client/core/utilities/ImmutableTree;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$700(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/firebase/client/core/utilities/ImmutableTree;->subtree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/ImmutableTree;

    move-result-object v2

    .line 541
    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 543
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;
    invoke-static {v4, v2}, Lcom/firebase/client/core/SyncTree;->access$1200(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v2

    .line 546
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/View;

    .line 547
    new-instance v5, Lcom/firebase/client/core/SyncTree$ListenContainer;

    iget-object v7, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-direct {v5, v7, v2}, Lcom/firebase/client/core/SyncTree$ListenContainer;-><init>(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/View;)V

    .line 548
    invoke-virtual {v2}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    .line 549
    iget-object v7, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;
    invoke-static {v7}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v8, v2}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    # getter for: Lcom/firebase/client/core/SyncTree$ListenContainer;->tag:Lcom/firebase/client/core/Tag;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree$ListenContainer;->access$1400(Lcom/firebase/client/core/SyncTree$ListenContainer;)Lcom/firebase/client/core/Tag;

    move-result-object v8

    invoke-interface {v7, v2, v8, v5, v5}, Lcom/firebase/client/core/SyncTree$ListenProvider;->startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V

    goto :goto_6

    :cond_7
    move v2, v4

    .line 528
    goto :goto_2

    :cond_8
    move v2, v4

    .line 531
    goto :goto_4

    :cond_9
    move v6, v2

    .line 535
    goto :goto_3

    .line 558
    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->val$cancelError:Lcom/firebase/client/FirebaseError;

    if-nez v2, :cond_b

    .line 561
    if-eqz v3, :cond_d

    .line 562
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$12;->val$query:Lcom/firebase/client/core/view/QuerySpec;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v3, v4}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    .line 572
    :cond_b
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->removeTags(Ljava/util/List;)V
    invoke-static {v2, v0}, Lcom/firebase/client/core/SyncTree;->access$1600(Lcom/firebase/client/core/SyncTree;Ljava/util/List;)V

    .line 576
    :cond_c
    return-object v1

    .line 564
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QuerySpec;

    .line 565
    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;
    invoke-static {v4, v2}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v4

    .line 566
    sget-boolean v5, Lcom/firebase/client/core/SyncTree$12;->$assertionsDisabled:Z

    if-nez v5, :cond_e

    if-nez v4, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 567
    :cond_e
    iget-object v5, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;
    invoke-static {v5}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/firebase/client/core/SyncTree$12;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v6, v2}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    goto :goto_7

    :cond_f
    move v6, v2

    goto/16 :goto_5
.end method
