.class Lcom/firebase/client/core/SyncTree$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/ImmutableTree$TreeVisitor",
        "<",
        "Lcom/firebase/client/core/SyncPoint;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/SyncTree;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/firebase/client/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 679
    check-cast p2, Lcom/firebase/client/core/SyncPoint;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/firebase/client/core/SyncTree$13;->onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onNodeValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->hasCompleteView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->getCompleteView()Lcom/firebase/client/core/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;
    invoke-static {v1}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v2, v0}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;
    invoke-static {v3, v0}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    .line 692
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 687
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    .line 688
    invoke-virtual {v0}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    .line 689
    iget-object v2, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # getter for: Lcom/firebase/client/core/SyncTree;->listenProvider:Lcom/firebase/client/core/SyncTree$ListenProvider;
    invoke-static {v2}, Lcom/firebase/client/core/SyncTree;->access$1500(Lcom/firebase/client/core/SyncTree;)Lcom/firebase/client/core/SyncTree$ListenProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->queryForListening(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;
    invoke-static {v3, v0}, Lcom/firebase/client/core/SyncTree;->access$1300(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    iget-object v4, p0, Lcom/firebase/client/core/SyncTree$13;->this$0:Lcom/firebase/client/core/SyncTree;

    # invokes: Lcom/firebase/client/core/SyncTree;->tagForQuery(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;
    invoke-static {v4, v0}, Lcom/firebase/client/core/SyncTree;->access$000(Lcom/firebase/client/core/SyncTree;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/Tag;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/firebase/client/core/SyncTree$ListenProvider;->stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V

    goto :goto_0
.end method
