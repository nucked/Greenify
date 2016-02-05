.class final Lcom/firebase/client/core/RepoManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$repo:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/firebase/client/core/RepoManager$2;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$2;->val$repo:Lcom/firebase/client/core/Repo;

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->resume()V

    .line 40
    return-void
.end method
