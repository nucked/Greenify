.class public Lcom/oasisfeng/greenify/WakeupObserver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms/.analytics.service.AnalyticsService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms/.ads.identifier.service.AdvertisingIdService"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.gms/com.google.android.location.internal.GoogleLocationManagerService"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.apps.plus/.service.EsSyncAdapterService"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.plus/com.google.android.libraries.social.autobackup.AutoBackupSyncService"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.apps.plus/com.google.android.apps.photos.service.GooglePhotoDownsyncService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.youtube/.app.remote.YouTubeTvRouteProviderService"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.vending/com.google.android.finsky.billing.iab.InAppBillingService"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.vending/com.google.android.finsky.services.LicensingService"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbor;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/oasisfeng/greenify/WakeupObserver;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oasisfeng.greenify.action.APP_WAKEUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oasisfeng.greenify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package"

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "waker"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oasisfeng/greenify/WakeupObserver;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 36
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v0, "uid"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 38
    const-string v0, "waker"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v3, "component"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {p1, v1}, Lccq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    new-instance v5, Lccn;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lccn;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v5, v1}, Lccn;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    if-eqz v3, :cond_3

    .line 45
    :goto_1
    new-instance v0, Lcbs;

    invoke-direct {v0, p1}, Lcbs;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcbs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, v3}, Lcom/oasisfeng/greenify/WakeupObserver;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wake."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v4

    const-wide/32 v8, 0x186a0

    div-long v8, v6, v8

    move-object v4, v0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/oasisfeng/greenify/CleanerService;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 44
    goto :goto_1
.end method
