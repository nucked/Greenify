.class Lcom/firebase/client/authentication/AuthenticationManager$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthListener;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$optionalUserData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$credential:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$optionalUserData:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/firebase/client/FirebaseError;)V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    const/4 v2, 0x0

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 568
    return-void
.end method

.method public onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    const/4 v2, 0x1

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleBadAuthStatus(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$300(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;Z)V

    .line 564
    return-void
.end method

.method public onAuthSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 559
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$credential:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$optionalUserData:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$11;->val$attempt:Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->handleAuthSuccess(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    invoke-static/range {v0 .. v5}, Lcom/firebase/client/authentication/AuthenticationManager;->access$400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 560
    return-void
.end method
