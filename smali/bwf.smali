.class public Lbwf;
.super Lbwe;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Bundle;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lbwe;-><init>(Landroid/os/Bundle;)V

    .line 177
    iput-object p1, p0, Lbwf;->c:Landroid/os/Bundle;

    iput-object p2, p0, Lbwf;->d:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 181
    iget-boolean v0, p0, Lbwf;->e:Z

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lbwf;->c:Landroid/os/Bundle;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lbwf;->e:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 184
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbwf;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lbwf;->d:Ljava/lang/String;

    iget-object v3, p0, Lbwf;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbwf;->e:Z

    .line 186
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
