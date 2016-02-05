.class Lcom/firebase/client/core/Repo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/SyncTree$ListenProvider;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;Lcom/firebase/client/core/SyncTree$SyncTreeHash;Lcom/firebase/client/core/SyncTree$CompletionListener;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/core/Repo$2$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/firebase/client/core/Repo$2$1;-><init>(Lcom/firebase/client/core/Repo$2;Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/SyncTree$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public stopListening(Lcom/firebase/client/core/view/QuerySpec;Lcom/firebase/client/core/Tag;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
