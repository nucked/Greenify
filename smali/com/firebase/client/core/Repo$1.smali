.class Lcom/firebase/client/core/Repo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    # invokes: Lcom/firebase/client/core/Repo;->deferredInitialization()V
    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$000(Lcom/firebase/client/core/Repo;)V

    .line 72
    return-void
.end method
