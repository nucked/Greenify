.class Lcom/firebase/client/authentication/AuthenticationManager$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/authentication/RequestHandler;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

.field final synthetic val$logUserOut:Z


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;ZLcom/firebase/client/Firebase$ValueResultHandler;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-boolean p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$logUserOut:Z

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 4

    .prologue
    .line 541
    new-instance v0, Lcom/firebase/client/FirebaseError;

    const/16 v1, -0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception while performing the request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/FirebaseError;-><init>(ILjava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->fireOnError(Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
    invoke-static {v1, v2, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    .line 544
    return-void
.end method

.method public onResult(Ljava/util/Map;)V
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
    .line 518
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    if-nez v0, :cond_1

    .line 520
    iget-boolean v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$logUserOut:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "uid"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/firebase/client/utilities/Utilities;->getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # getter for: Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;
    invoke-static {v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # getter for: Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;
    invoke-static {v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/AuthData;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->unauth(Lcom/firebase/client/Firebase$CompletionListener;Z)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v1, Lcom/firebase/client/authentication/AuthenticationManager$10$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/authentication/AuthenticationManager$10$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$10;Ljava/util/Map;)V

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->scheduleNow(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->decodeErrorResponse(Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;
    invoke-static {v1, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$900(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Object;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$10;->val$handler:Lcom/firebase/client/Firebase$ValueResultHandler;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->fireOnError(Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V
    invoke-static {v1, v2, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$ValueResultHandler;Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method
