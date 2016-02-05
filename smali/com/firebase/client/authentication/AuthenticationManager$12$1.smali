.class Lcom/firebase/client/authentication/AuthenticationManager$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# instance fields
.field final synthetic this$1:Lcom/firebase/client/authentication/AuthenticationManager$12;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager$12;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$12$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/firebase/client/authentication/AuthenticationManager$12$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$12;

    iget-object v0, v0, Lcom/firebase/client/authentication/AuthenticationManager$12;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$12$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$12;

    iget-object v1, v1, Lcom/firebase/client/authentication/AuthenticationManager$12;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    # getter for: Lcom/firebase/client/authentication/AuthenticationManager;->repo:Lcom/firebase/client/core/Repo;
    invoke-static {v1}, Lcom/firebase/client/authentication/AuthenticationManager;->access$1700(Lcom/firebase/client/authentication/AuthenticationManager;)Lcom/firebase/client/core/Repo;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Path;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 601
    iget-object v1, p0, Lcom/firebase/client/authentication/AuthenticationManager$12$1;->this$1:Lcom/firebase/client/authentication/AuthenticationManager$12;

    iget-object v1, v1, Lcom/firebase/client/authentication/AuthenticationManager$12;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-interface {v1, p1, v0}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 603
    :cond_0
    return-void
.end method
