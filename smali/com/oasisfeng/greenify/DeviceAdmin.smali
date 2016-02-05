.class public Lcom/oasisfeng/greenify/DeviceAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/oasisfeng/greenify/DeviceAdmin;->c(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 48
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/oasisfeng/greenify/DeviceAdmin;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/oasisfeng/greenify/DeviceAdmin;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const v2, 0x7f080060

    .line 41
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    const/16 v1, 0xab

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oasisfeng/greenify/DeviceAdmin;->c(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oasisfeng/greenify/DeviceAdmin;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oasisfeng/greenify/DeviceAdmin;->c(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oasisfeng/greenify/DeviceAdmin;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const-string v0, "ScreenLocker"

    const-string v1, "Device-admin is inactive, cannot lock screen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v1, "ScreenLocker"

    const-string v2, "Lock screen now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oasisfeng.greenify.action.FORCE_SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    :try_start_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "DevicePolicyManager.lockNow"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 52
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f080061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
