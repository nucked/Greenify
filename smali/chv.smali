.class Lchv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcht;


# direct methods
.method constructor <init>(Lcht;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lchv;->a:Lcht;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lchs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HybridTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm fired for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lchv;->a:Lcht;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lchv;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->b(Lchs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lchv;->a:Lcht;

    invoke-static {v1}, Lcht;->b(Lcht;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    iget-object v0, p0, Lchv;->a:Lcht;

    invoke-static {v0}, Lcht;->d(Lcht;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "HybridTimer"

    const-string v1, "Alarm is not canceled for task already run."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lchv;->a:Lcht;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcht;->a(Lcht;Z)Z

    .line 63
    iget-object v0, p0, Lchv;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->d(Lchs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lchv;->a:Lcht;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lchv;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->d(Lchs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lchv;->a:Lcht;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
