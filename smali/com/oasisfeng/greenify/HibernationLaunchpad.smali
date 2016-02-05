.class public Lcom/oasisfeng/greenify/HibernationLaunchpad;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcas;

    invoke-direct {v0, p0}, Lcas;-><init>(Lcom/oasisfeng/greenify/HibernationLaunchpad;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->a:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    .line 26
    :try_start_0
    const-string v0, "reset"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v2, v2}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->overridePendingTransition(II)V

    .line 34
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->finish()V

    .line 36
    :goto_0
    return-void

    .line 27
    :cond_0
    :try_start_1
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p0, v2, v2}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->overridePendingTransition(II)V

    .line 34
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->finish()V

    goto :goto_0

    .line 30
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-virtual {p0, v2, v2}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->overridePendingTransition(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2, v2}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->overridePendingTransition(II)V

    .line 34
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->finish()V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->a(Landroid/content/Intent;)V

    .line 16
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->setIntent(Landroid/content/Intent;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->a(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/HibernationLaunchpad;->setIntent(Landroid/content/Intent;)V

    .line 41
    iget-object v0, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/HibernationLaunchpad;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method
