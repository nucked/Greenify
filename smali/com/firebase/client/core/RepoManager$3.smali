.class Lcom/firebase/client/core/RepoManager$3;
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
    .line 76
    iput-object p1, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    iput-object p2, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$3;->this$0:Lcom/firebase/client/core/RepoManager;

    # getter for: Lcom/firebase/client/core/RepoManager;->repos:Ljava/util/Map;
    invoke-static {v0}, Lcom/firebase/client/core/RepoManager;->access$000(Lcom/firebase/client/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo;

    .line 83
    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->interrupt()V

    .line 84
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    move v2, v0

    .line 85
    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_1
    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/firebase/client/core/RepoManager$3;->val$ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->stop()V

    .line 90
    :cond_2
    monitor-exit v3

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
