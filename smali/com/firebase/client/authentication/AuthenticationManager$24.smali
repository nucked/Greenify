.class Lcom/firebase/client/authentication/AuthenticationManager$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$handler:Lcom/firebase/client/Firebase$ResultHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/Firebase$ResultHandler;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 786
    const-string v0, "/users/%s/password"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->val$email:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 788
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    sget-object v2, Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;->POST:Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;

    iget-object v5, p0, Lcom/firebase/client/authentication/AuthenticationManager$24;->val$handler:Lcom/firebase/client/Firebase$ResultHandler;

    move-object v4, v3

    # invokes: Lcom/firebase/client/authentication/AuthenticationManager;->makeOperationRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V
    invoke-static/range {v0 .. v6}, Lcom/firebase/client/authentication/AuthenticationManager;->access$2400(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/Firebase$ResultHandler;Z)V

    .line 789
    return-void
.end method
