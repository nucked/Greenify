.class Lcom/firebase/client/core/PersistentConnection$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

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
    .line 930
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 934
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/utilities/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$7;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection;->access$1100(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 936
    :cond_0
    return-void
.end method
