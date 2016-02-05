.class public abstract Lbpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbpk",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lbph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbph",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:Lbpi;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lbph;

    invoke-direct {v0}, Lbph;-><init>()V

    iput-object v0, p0, Lbpg;->a:Lbph;

    .line 71
    new-instance v0, Lbpi;

    invoke-direct {v0}, Lbpi;-><init>()V

    iput-object v0, p0, Lbpg;->b:Lbpi;

    .line 76
    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 392
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 394
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lbpg;->b:Lbpi;

    invoke-virtual {v0, p1, p2}, Lbpi;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 171
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {v0, p1}, Lbph;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lbpg;->b:Lbpi;

    invoke-virtual {v1}, Lbpi;->a()V

    .line 187
    :cond_0
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lbpg;->a:Lbph;

    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lbph;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lbpg;->b:Lbpi;

    invoke-virtual {v1}, Lbpi;->a()V

    .line 204
    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {v0, p1}, Lbph;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lbpg;->b:Lbpi;

    invoke-virtual {v0}, Lbpi;->a()V

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lbpg;->a()V

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {v0}, Lbph;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbph;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {v0}, Lbph;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbpg;->a:Lbph;

    invoke-virtual {v0}, Lbph;->b()Z

    move-result v0

    return v0
.end method
