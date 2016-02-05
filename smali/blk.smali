.class Lblk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbli;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbli",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lbli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbli",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile transient b:Z

.field transient c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbli;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbli",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lblk;->a:Lbli;

    .line 118
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    iget-boolean v0, p0, Lblk;->b:Z

    if-nez v0, :cond_1

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lblk;->b:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lblk;->a:Lbli;

    invoke-interface {v0}, Lbli;->a()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lblk;->c:Ljava/lang/Object;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lblk;->b:Z

    .line 128
    monitor-exit p0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    iget-object v0, p0, Lblk;->c:Ljava/lang/Object;

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lblk;->a:Lbli;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
