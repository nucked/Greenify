.class Lcom/firebase/client/authentication/AuthenticationManager$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthStateListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthStateListener;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # getter for: Lcom/firebase/client/authentication/AuthenticationManager;->listenerSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1900(Lcom/firebase/client/authentication/AuthenticationManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->val$listener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # getter for: Lcom/firebase/client/authentication/AuthenticationManager;->authData:Lcom/firebase/client/AuthData;
    invoke-static {v0}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1100(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/AuthData;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$13;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v2, Lcom/firebase/client/authentication/AuthenticationManager$13$1;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager$13$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$13;Lcom/firebase/client/AuthData;)V

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->fireEvent(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/firebase/client/authentication/AuthenticationManager;->access$200(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method
