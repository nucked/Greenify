.class Lcom/firebase/client/authentication/AuthenticationManager$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ResultHandler;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$oldPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$oldPassword:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$newPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 756
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 757
    const-string v0, "oldPassword"

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$oldPassword:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 759
    const-string v0, "password"

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$newPassword:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v0, "/users/%s/password"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$email:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 761
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->PUT:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$22;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V
    invoke-static/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V

    .line 762
    return-void
.end method
