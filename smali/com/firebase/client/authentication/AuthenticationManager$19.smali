.class Lcom/firebase/client/authentication/AuthenticationManager$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$provider:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$params:Ljava/util/Map;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 712
    const-string v0, "/auth/%s/token"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$provider:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$params:Ljava/util/Map;

    iget-object v3, p0, Lcom/firebase/client/authentication/AuthenticationManager$19;->val$handler:Lcom/firebase/client/Firebase$AuthResultHandler;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->makeAuthenticationRequest(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V
    invoke-static {v1, v0, v2, v3}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2000(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 714
    return-void
.end method
