.class Lcom/firebase/client/authentication/AuthenticationManager$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthListener;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->newAuthAttempt(Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;
    invoke-static {v0, v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2200(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthListener;)Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$18;->val$token:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->authWithCredential(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V
    invoke-static {v1, v2, v3, v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$800(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/authentication/AuthenticationManager$AuthAttempt;)V

    .line 694
    return-void
.end method
