.class Lcom/firebase/client/core/PersistentConnection$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/PersistentConnection;

.field final synthetic val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

.field final synthetic val$restoreWritesAfterComplete:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;Z)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    iput-boolean p3, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$restoreWritesAfterComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .locals 3
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
    .line 734
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    sget-object v1, Lcom/firebase/client/core/PersistentConnection$ConnectionState;->Connected:Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    # setter for: Lcom/firebase/client/core/PersistentConnection;->connectionState:Lcom/firebase/client/core/PersistentConnection$ConnectionState;
    invoke-static {v0, v1}, Lcom/firebase/client/core/PersistentConnection;->access$602(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$ConnectionState;)Lcom/firebase/client/core/PersistentConnection$ConnectionState;

    .line 737
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection;->access$700(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 738
    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 740
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$800(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 741
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccess(Ljava/lang/Object;)V

    .line 751
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$restoreWritesAfterComplete:Z

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # invokes: Lcom/firebase/client/core/PersistentConnection;->restoreWrites()V
    invoke-static {v0}, Lcom/firebase/client/core/PersistentConnection;->access$900(Lcom/firebase/client/core/PersistentConnection;)V

    .line 754
    :cond_1
    return-void

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    const/4 v2, 0x0

    # setter for: Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;
    invoke-static {v1, v2}, Lcom/firebase/client/core/PersistentConnection;->access$702(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 745
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$4;->this$0:Lcom/firebase/client/core/PersistentConnection;

    # getter for: Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;
    invoke-static {v1}, Lcom/firebase/client/core/PersistentConnection;->access$800(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 746
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$4;->val$credential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-static {v0, v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onCancel(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
