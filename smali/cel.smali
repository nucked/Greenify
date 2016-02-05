.class public Lcel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {p0}, Lcel;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 60
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    const-string v1, "Enable or disable notification access for Greenify"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->q:Lcbi;

    const-string v2, "NotificationListener"

    const-string v3, "NoNotificationListenerSettingsActivity"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lcel;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/oasisfeng/greenify/notification/NotificationListenerDelegate;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
