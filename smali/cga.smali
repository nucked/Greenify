.class public Lcga;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try warming up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 127
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcfl;->a(Landroid/content/Intent;II)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "gcm"

    return-object v0
.end method

.method a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 134
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redeliver push message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v0, 0xb

    invoke-static {p1, p2, v0}, Lcfl;->a(Landroid/content/Intent;II)V

    .line 136
    return-void
.end method

.method protected b()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    :cond_0
    move v2, v1

    .line 36
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    move v5, v1

    .line 37
    :goto_1
    if-eqz v2, :cond_3

    const-class v3, Landroid/app/NotificationManager;

    const-string v4, "getService"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, v7}, Lcga;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v4

    .line 38
    :goto_2
    if-eqz v2, :cond_4

    const-string v3, "android.app.INotificationManager"

    const-string v7, "areNotificationsEnabledForPackage"

    new-array v8, v1, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {p0, v3, v7, v8}, Lcga;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v3

    .line 43
    :goto_3
    const-string v7, "com.android.server.am.ActivityManagerService"

    const-string v8, "broadcastIntentLocked"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v6, v9, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v9, v1

    const/4 v0, 0x2

    const-class v1, Landroid/content/Intent;

    aput-object v1, v9, v0

    invoke-virtual {p0, v7, v8, v9}, Lcga;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v6

    new-instance v0, Lcgb;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcgb;-><init>(Lcga;ZLcjw;Lcjw;Z)V

    invoke-virtual {v6, v0}, Lcjw;->a(Lcjs;)V

    .line 108
    return-void

    :cond_1
    move v2, v0

    .line 35
    goto :goto_0

    :cond_2
    move v5, v0

    .line 36
    goto :goto_1

    :cond_3
    move-object v4, v6

    .line 37
    goto :goto_2

    :cond_4
    move-object v3, v6

    .line 38
    goto :goto_3
.end method
