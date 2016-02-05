.class Lcom/firebase/client/core/RepoManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/RepoManager;

.field final synthetic val$ctx:Lcom/firebase/client/core/Context;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/RepoManager;Lcom/firebase/client/core/Context;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    iput-object p2, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$4;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$4;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo;

    .line 105
    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->resume()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    return-void
.end method
