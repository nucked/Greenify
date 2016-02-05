.class public Lcom/oasisfeng/greenify/nevo/NotificationKeeper;
.super Lciy;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lciy;-><init>()V

    .line 53
    new-instance v0, Lcef;

    invoke-direct {v0, p0}, Lcef;-><init>(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->c:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->d:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/nevo/NotificationKeeper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 41
    iget-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognizable key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 45
    iget-object v1, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revive notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/nevo/NotificationKeeper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    return-void
.end method
