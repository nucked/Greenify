.class public Lcom/oasisfeng/greenify/engine/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oasisfeng/greenify/engine/PackageMonitor;->b(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private static synthetic b(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lccn;->b()Ljava/util/Set;

    move-result-object v0

    .line 35
    new-instance v1, Lcdu;

    invoke-direct {v1, p1, v0}, Lcdu;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-virtual {v1, v0}, Lcdu;->a(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    const-string v1, "package"

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lccn;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lccn;-><init>(Landroid/content/Context;Z)V

    .line 30
    invoke-virtual {v1, v0}, Lccn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/engine/PackageMonitor;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 32
    invoke-static {v1, p1, v0}, Lccw;->a(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
