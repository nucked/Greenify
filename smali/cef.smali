.class public Lcef;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;


# direct methods
.method public constructor <init>(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcef;->a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcef;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcef;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcef;->a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;

    invoke-static {v0}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcef;->a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;

    invoke-static {v1}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->a(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hibernated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcef;->a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;

    invoke-static {v1}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcef;->a:Lcom/oasisfeng/greenify/nevo/NotificationKeeper;

    invoke-static {v1}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->c(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0, v0}, Lceg;->a(Lcef;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
