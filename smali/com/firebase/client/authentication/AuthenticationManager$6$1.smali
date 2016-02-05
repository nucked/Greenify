.class Lcom/firebase/client/authentication/AuthenticationManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthListener;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$6;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/firebase/client/FirebaseError;)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$6;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 350
    return-void
.end method

.method public onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$6;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 360
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$6;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v1, v1, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$tokenString:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v2, v2, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$authDataObj:Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$6$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$6;

    iget-object v3, v3, Lcom/firebase/client/authentication/AuthenticationManager$6;->val$userData:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleAuthSuccess(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    invoke-static/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager;->access$400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 355
    return-void
.end method
