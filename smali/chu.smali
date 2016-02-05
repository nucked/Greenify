.class Lchu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcht;


# direct methods
.method constructor <init>(Lcht;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lchu;->a:Lcht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lchu;->a:Lcht;

    invoke-static {v2}, Lcht;->a(Lcht;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 39
    invoke-static {}, Lchs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HybridTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continue to spin for remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lchu;->a:Lcht;

    invoke-static {v4}, Lcht;->a(Lcht;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object v2, p0, Lchu;->a:Lcht;

    iget-object v2, v2, Lcht;->b:Lchs;

    invoke-static {v2}, Lchs;->a(Lchs;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lchu;->a:Lcht;

    invoke-static {v3}, Lcht;->a(Lcht;)J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x7530

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    iget-object v0, p0, Lchu;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->b(Lchs;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lchu;->a:Lcht;

    invoke-static {v1}, Lcht;->b(Lcht;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    iget-object v0, p0, Lchu;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->c(Lchs;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lchu;->a:Lcht;

    invoke-static {v1}, Lcht;->c(Lcht;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 44
    iget-object v0, p0, Lchu;->a:Lcht;

    invoke-static {v0}, Lcht;->d(Lcht;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "HybridTimer"

    const-string v1, "Handler is not canceled for task already run."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lchu;->a:Lcht;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcht;->a(Lcht;Z)Z

    .line 49
    invoke-static {}, Lchs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HybridTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler to run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lchu;->a:Lcht;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_3
    iget-object v0, p0, Lchu;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->d(Lchs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lchu;->a:Lcht;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lchu;->a:Lcht;

    iget-object v0, v0, Lcht;->b:Lchs;

    invoke-static {v0}, Lchs;->d(Lchs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lchu;->a:Lcht;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_1
.end method
