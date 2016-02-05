.class Lass;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laql;

.field final synthetic b:Lasr;


# direct methods
.method constructor <init>(Lasr;Laql;)V
    .locals 0

    iput-object p1, p0, Lass;->b:Lasr;

    iput-object p2, p0, Lass;->a:Laql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lass;->b:Lasr;

    invoke-static {v0}, Lasr;->a(Lasr;)Laqo;

    move-result-object v0

    iget-object v1, p0, Lass;->a:Laql;

    invoke-virtual {v0, v1}, Laqo;->a(Laql;)Laqg;

    move-result-object v0

    iget-object v1, p0, Lass;->b:Lasr;

    invoke-static {v1}, Lasr;->b(Lasr;)Last;

    move-result-object v1

    iget-object v2, p0, Lass;->b:Lasr;

    invoke-static {v2}, Lasr;->b(Lasr;)Last;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Last;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Last;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lass;->b:Lasr;

    iget-object v1, p0, Lass;->a:Laql;

    invoke-static {v0, v1}, Lasr;->a(Lasr;Laql;)V

    iget-object v0, p0, Lass;->b:Lasr;

    invoke-static {v0}, Lasr;->c(Lasr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lass;->b:Lasr;

    invoke-virtual {v0, v1}, Lapz;->b(Lasr;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lass;->b:Lasr;

    invoke-static {v1}, Lasr;->b(Lasr;)Last;

    move-result-object v1

    iget-object v2, p0, Lass;->b:Lasr;

    invoke-static {v2}, Lasr;->b(Lasr;)Last;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Last;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Last;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lass;->b:Lasr;

    iget-object v1, p0, Lass;->a:Laql;

    invoke-static {v0, v1}, Lasr;->a(Lasr;Laql;)V

    iget-object v0, p0, Lass;->b:Lasr;

    invoke-static {v0}, Lasr;->c(Lasr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lass;->b:Lasr;

    invoke-virtual {v0, v1}, Lapz;->b(Lasr;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lass;->b:Lasr;

    iget-object v2, p0, Lass;->a:Laql;

    invoke-static {v0, v2}, Lasr;->a(Lasr;Laql;)V

    iget-object v0, p0, Lass;->b:Lasr;

    invoke-static {v0}, Lasr;->c(Lasr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapz;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lass;->b:Lasr;

    invoke-virtual {v0, v2}, Lapz;->b(Lasr;)V

    :cond_1
    throw v1
.end method
