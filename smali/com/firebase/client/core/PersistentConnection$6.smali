.class Lcom/firebase/client/core/PersistentConnection$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 900
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 902
    const-string v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    const-string v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 904
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v3}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v3

    # invokes: Lcom/firebase/client/core/PersistentConnection;->warnOnListenerWarnings(Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V
    invoke-static {v2, v1, v3}, Lcom/firebase/client/core/PersistentConnection;->access$1300(Lcom/firebase/client/core/PersistentConnection;Ljava/util/List;Lcom/firebase/client/core/view/QuerySpec;)V

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection;->access$1400(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v2}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 910
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    if-ne v1, v2, :cond_1

    .line 911
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 912
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$6;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v2}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getQuery()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v2

    # invokes: Lcom/firebase/client/core/PersistentConnection;->removeListen(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
    invoke-static {v1, v2}, Lcom/firebase/client/core/PersistentConnection;->access$1500(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 913
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/firebase/client/core/PersistentConnection$RequestResultListener;->onRequestResult(Lcom/firebase/client/FirebaseError;)V

    .line 919
    :cond_1
    :goto_0
    return-void

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$6;->val$listen:Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    # getter for: Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->resultListener:Lcom/firebase/client/core/PersistentConnection$RequestResultListener;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->access$500(Lcom/firebase/client/core/PersistentConnection$OutstandingListen;)Lcom/firebase/client/core/PersistentConnection$RequestResultListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$RequestResultListener;->onRequestResult(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
