.class Lara;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laqx;


# direct methods
.method constructor <init>(Laqx;)V
    .locals 0

    iput-object p1, p0, Lara;->a:Laqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lara;->a:Laqx;

    invoke-static {v0}, Laqx;->a(Laqx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lara;->a:Laqx;

    invoke-static {v0}, Laqx;->b(Laqx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lara;->a:Laqx;

    invoke-static {v0}, Laqx;->a(Laqx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lara;->a:Laqx;

    invoke-static {v1}, Laqx;->a(Laqx;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
