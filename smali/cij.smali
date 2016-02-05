.class public Lcij;
.super Lbwe;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lbwe;-><init>(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcij;->c:Ljava/util/HashSet;

    .line 60
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcij;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcij;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o(Ljava/lang/String;)Lbwg;
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcij;->b:Landroid/os/Bundle;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcij;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcij;->b:Landroid/os/Bundle;

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v2, :cond_0

    new-instance v0, Lcij;

    invoke-direct {v0, v2}, Lcij;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 57
    :cond_0
    new-instance v0, Lcik;

    invoke-direct {v0, v3, p1}, Lcik;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method
