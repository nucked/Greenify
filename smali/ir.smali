.class final Lir;
.super Ljj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Liq;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Liq;)V
    .locals 2

    .prologue
    .line 42
    iput-object p1, p0, Lir;->b:Liq;

    invoke-direct {p0}, Ljj;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lir;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lir;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lir;->b:Liq;

    invoke-virtual {v0}, Liq;->e()Ljava/lang/Object;
    :try_end_0
    .catch Lkt; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {p0}, Lir;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lir;->b:Liq;

    invoke-virtual {v0, p0, p1}, Liq;->b(Lir;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lir;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lir;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lir;->b:Liq;

    invoke-virtual {v0, p0, p1}, Liq;->a(Lir;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lir;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lir;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lir;->a:Z

    .line 99
    iget-object v0, p0, Lir;->b:Liq;

    invoke-virtual {v0}, Liq;->c()V

    .line 100
    return-void
.end method
