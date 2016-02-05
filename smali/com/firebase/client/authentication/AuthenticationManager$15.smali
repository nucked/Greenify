.class Lcom/firebase/client/authentication/AuthenticationManager$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    const-string v2, "/auth/anonymous"

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$15;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->makeAuthenticationRequest(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    invoke-static {v1, v2, v0, v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2000(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 656
    return-void
.end method
