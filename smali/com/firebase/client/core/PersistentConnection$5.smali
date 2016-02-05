.class Lcom/firebase/client/core/PersistentConnection$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

.field final synthetic val$putId:J


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;JLcom/firebase/client/core/PersistentConnection$OutstandingPut;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    .prologue
    .line 843
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    iput-object p5, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    iput-object p6, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 846
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1200(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 849
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$put:Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    if-ne v0, v1, :cond_3

    .line 850
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1200(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    if-eqz v0, :cond_1

    .line 853
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-interface {v0, v4, v4}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_0

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$5;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring on complete for put "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/firebase/client/core/PersistentConnection$5;->val$putId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it was removed already."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
