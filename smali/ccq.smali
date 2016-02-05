.class public Lccq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String;

.field private static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.android.pacprocessor"

    aput-object v2, v0, v4

    const-string v2, "com.android.bluetoothmidiservice"

    aput-object v2, v0, v1

    const-string v2, "com.android.certinstaller"

    aput-object v2, v0, v5

    const-string v2, "com.android.backupconfirm"

    aput-object v2, v0, v6

    const-string v2, "com.android.htmlviewer"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "com.android.managedprovisioning"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.android.wallpapercropper"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.android.wallpaper.livepicker"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.android.proxyhandler"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "com.oasisfeng.greenify.pro"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccq;->a:Ljava/util/List;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.oasisfeng.greenify"

    aput-object v2, v0, v1

    const-string v2, "com.oasisfeng.greenify.pro"

    aput-object v2, v0, v5

    const-string v2, "de.robv.android.xposed.installer"

    aput-object v2, v0, v6

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccq;->b:Ljava/util/List;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    const-string v0, "am force-stop "

    :goto_0
    sput-object v0, Lccq;->c:Ljava/lang/String;

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 334
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_enableAutoPowerModes"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 338
    :goto_1
    sput-boolean v0, Lccq;->d:Z

    .line 340
    :goto_2
    return-void

    .line 77
    :cond_0
    const-string v0, "am force-stop --user current "

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v2, "Hyber"

    const-string v3, "Error reading com.android.internal.R.bool.config_enableAutoPowerModes"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    .line 339
    :cond_1
    sput-boolean v4, Lccq;->d:Z

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 166
    :goto_0
    return-object v0

    .line 114
    :cond_0
    if-nez p2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    const-string v0, "am broadcast"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, " -a "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, " -d "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    :cond_3
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, " -t "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, " -n "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " -f "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_6
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    const-string v0, " -c "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 128
    :cond_7
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_8

    const-string v0, " --user current"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_8
    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-ge v0, v6, :cond_b

    .line 134
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package and extras cannot be coexistent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_9
    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 138
    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :goto_3
    if-nez v0, :cond_a

    .line 141
    invoke-virtual {v4, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v3, "intent:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0x20

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :try_start_0
    new-instance v3, Lccv;

    invoke-direct {v3, v0}, Lccv;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 161
    invoke-virtual {v3, v0}, Lccv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 137
    :cond_b
    const-string v0, " -p "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v0, "Hyber"

    const-string v2, "Broadcast timeout (3s)."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    if-eqz p2, :cond_0

    invoke-static {v0}, Lccq;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 87
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lccq;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 88
    if-nez v6, :cond_2

    .line 90
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lccq;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 91
    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    .line 92
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lccq;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 94
    :cond_1
    if-nez v6, :cond_2

    .line 95
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lccq;->a(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 97
    :cond_2
    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 98
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    const-string v1, "Wakeup"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v4, 0x0

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 100
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "direct"

    invoke-static {v0, p1, p3}, Lcom/oasisfeng/greenify/WakeupObserver;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    move-object v0, v6

    .line 106
    :goto_1
    return-object v0

    .line 98
    :cond_4
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 103
    :cond_5
    invoke-static {p0}, Lccq;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Lccq;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    invoke-static {p1}, Lccr;->a(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->b(Ljava/lang/Runnable;)V

    .line 105
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0}, Lccq;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "Hyber"

    const-string v1, "Skip shallow hibernation in paroled state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-static {p1}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v0

    invoke-static {}, Lccs;->a()Lbku;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmn;->a(Lbku;)Lbmn;

    move-result-object v0

    invoke-static {}, Lcct;->a()Lbkl;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lbmn;->a(Lbkl;)Lbmn;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbmn;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 188
    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {p0, v0}, Lccq;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "Hyber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " shallow-hibernated"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lccq;->a(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lccq;->b(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lccq;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 255
    sget-boolean v0, Lccq;->d:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oasisfeng.greenify.system_apps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_apps_limited"

    .line 251
    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 242
    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    sget-object v3, Lccq;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {p0, v1}, Lccz;->a(Landroid/content/Context;Z)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-static {p0}, Lccq;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    invoke-static {p0, p1}, Lccq;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 298
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lccq;->a(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "android.permission.FORCE_STOP_PACKAGES"

    invoke-static {p0, v0}, Lcbb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 204
    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 205
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "Hyber"

    const-string v2, "Failed to perform hibernation"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    new-instance v2, Lccc;

    invoke-direct {v2, p0}, Lccc;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 225
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-nez v6, :cond_1

    .line 226
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Lccx;->a(I)V

    .line 228
    :cond_1
    invoke-static {v5}, Lccq;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    const-string v5, "Hyber"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hibernated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2, v0}, Lccc;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :catch_1
    move-exception v0

    .line 210
    const-string v1, "Hyber"

    const-string v2, "Failed to perform hibernation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 213
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lccq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 215
    :cond_3
    invoke-static {v1}, Lcdj;->a(Ljava/util/Collection;)Ljava/util/List;

    goto/16 :goto_1

    .line 231
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 223
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 233
    :cond_5
    return-object v3
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 259
    sget-boolean v0, Lccq;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .prologue
    .line 285
    invoke-static {p1}, Lccq;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lccq;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 304
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    invoke-static {p0, p1}, Lccq;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 312
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lccq;->a(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    goto :goto_0

    .line 307
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lccq;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lccq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 275
    :goto_0
    return v1

    .line 264
    :cond_0
    invoke-static {}, Lbkr;->d()Lbkr;

    move-result-object v2

    .line 265
    invoke-static {}, Lblg;->a()Lblg;

    move-result-object v3

    .line 266
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 268
    :try_start_0
    sget-object v4, Lccq;->a:Ljava/util/List;

    invoke-static {v4}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lccu;->a(Landroid/app/usage/UsageStatsManager;)Lbku;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbmn;->c(Lbku;)Lbkr;

    move-result-object v2

    invoke-virtual {v2}, Lbkr;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 271
    :goto_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lblg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 272
    invoke-virtual {v2}, Lbkr;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    const-string v1, "Hyber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppStandbyParoled spent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u03bcs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lccq;->a:Ljava/util/List;

    invoke-virtual {v2}, Lbkr;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v0

    .line 275
    goto :goto_0

    :cond_1
    move v0, v1

    .line 269
    goto :goto_1

    .line 274
    :cond_2
    const-string v1, "Hyber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppStandbyParoled (fallback) spent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u03bcs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    :catchall_0
    move-exception v0

    move-object v1, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2}, Lblg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 272
    invoke-virtual {v1}, Lbkr;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    const-string v4, "Hyber"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppStandbyParoled spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u03bcs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccq;->a:Ljava/util/List;

    invoke-virtual {v1}, Lbkr;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_3
    throw v0

    .line 274
    :cond_3
    const-string v1, "Hyber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAppStandbyParoled (fallback) spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u03bcs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 324
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 279
    invoke-static {p0}, Lccq;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shallow_hibernation"

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lccq;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    const-string v0, "am set-inactive --user current %1$s true"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "am set-inactive --user current %1$s false"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    return-void
.end method
