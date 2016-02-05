.class public Lcom/oasisfeng/greenify/Startup;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->c(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;)Z

    .line 45
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcdu;

    new-instance v1, Lccn;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lccn;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lccn;->b()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcdu;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcdu;->a()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->b(Landroid/content/Context;)V

    .line 20
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/Startup;->a(Landroid/content/Context;)V

    .line 23
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/Startup;->c(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 25
    invoke-static {p1}, Lcom/oasisfeng/greenify/DozeService;->a(Landroid/content/Context;)Z

    .line 26
    invoke-static {p1}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Landroid/content/Context;)Z

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->a(Landroid/content/Context;)V

    .line 28
    return-void

    .line 21
    :cond_1
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oasisfeng/greenify/Startup;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
