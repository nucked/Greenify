.class public Lcom/firebase/client/core/ZombieEventManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/firebase/client/core/EventRegistrationZombieListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static defaultInstance:Lcom/firebase/client/core/ZombieEventManager;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/core/EventRegistration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/firebase/client/core/ZombieEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/ZombieEventManager;->$assertionsDisabled:Z

    .line 26
    new-instance v0, Lcom/firebase/client/core/ZombieEventManager;

    invoke-direct {v0}, Lcom/firebase/client/core/ZombieEventManager;-><init>()V

    sput-object v0, Lcom/firebase/client/core/ZombieEventManager;->defaultInstance:Lcom/firebase/client/core/ZombieEventManager;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/firebase/client/core/ZombieEventManager;
    .locals 1
    .annotation build Lcom/firebase/client/annotations/NotNull;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/firebase/client/core/ZombieEventManager;->defaultInstance:Lcom/firebase/client/core/ZombieEventManager;

    return-object v0
.end method

.method private unRecordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v4, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    if-eqz v0, :cond_7

    move v3, v1

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v2

    .line 80
    :goto_2
    sget-boolean v2, Lcom/firebase/client/core/ZombieEventManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/EventRegistration;->clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;

    move-result-object v2

    .line 88
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    if-eqz v0, :cond_4

    .line 90
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void

    .line 90
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onZombied(Lcom/firebase/client/core/EventRegistration;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/firebase/client/core/ZombieEventManager;->unRecordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V

    .line 141
    return-void
.end method

.method public recordEventRegistration(Lcom/firebase/client/core/EventRegistration;)V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v2, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QuerySpec;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/core/view/QuerySpec;->defaultQueryAtPath(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/EventRegistration;->clone(Lcom/firebase/client/core/view/QuerySpec;)Lcom/firebase/client/core/EventRegistration;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v3, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/EventRegistration;->setIsUserInitiated(Z)V

    .line 59
    invoke-virtual {p1, p0}, Lcom/firebase/client/core/EventRegistration;->setOnZombied(Lcom/firebase/client/core/EventRegistrationZombieListener;)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zombifyForRemove(Lcom/firebase/client/core/EventRegistration;)V
    .locals 6

    .prologue
    .line 105
    iget-object v3, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/view/QuerySpec;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/EventRegistration;

    .line 124
    invoke-virtual {v1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/firebase/client/core/EventRegistration;->getQuerySpec()Lcom/firebase/client/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v1}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    .line 122
    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/EventRegistration;

    invoke-virtual {v0}, Lcom/firebase/client/core/EventRegistration;->zombify()V

    .line 135
    :cond_2
    monitor-exit v3

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
