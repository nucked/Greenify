.class Lcdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lccz;


# direct methods
.method constructor <init>(Lccz;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcdg;->a:Lccz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcdh;

    invoke-direct {v2, p0}, Lcdh;-><init>(Lcdg;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 295
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    iget-object v0, p0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcdi;->b(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcdg;->a:Lccz;

    invoke-static {v0}, Lccz;->c(Lccz;)Lcdi;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcdi;->b(I)V

    .line 303
    return-void
.end method
