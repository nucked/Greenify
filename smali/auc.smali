.class public final Lauc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Latx;

.field private final b:I


# direct methods
.method public constructor <init>(Latx;I)V
    .locals 0

    iput-object p1, p0, Lauc;->a:Latx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lauc;->b:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lave;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lauc;->a:Latx;

    invoke-static {v0}, Latx;->a(Latx;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lauc;->a:Latx;

    invoke-static {p2}, Lauw;->a(Landroid/os/IBinder;)Lauv;

    move-result-object v2

    invoke-static {v0, v2}, Latx;->a(Latx;Lauv;)Lauv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lauc;->a:Latx;

    const/4 v1, 0x0

    iget v2, p0, Lauc;->b:I

    invoke-virtual {v0, v1, v2}, Latx;->a(II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lauc;->a:Latx;

    invoke-static {v0}, Latx;->a(Latx;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lauc;->a:Latx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Latx;->a(Latx;Lauv;)Lauv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lauc;->a:Latx;

    iget-object v0, v0, Latx;->a:Landroid/os/Handler;

    iget-object v1, p0, Lauc;->a:Latx;

    iget-object v1, v1, Latx;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lauc;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
