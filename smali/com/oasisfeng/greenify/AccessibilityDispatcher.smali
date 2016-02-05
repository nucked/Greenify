.class public Lcom/oasisfeng/greenify/AccessibilityDispatcher;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static a:Landroid/os/IBinder;

.field private static e:J


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private final c:Lbzb;

.field private d:Lceh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 219
    new-instance v0, Lbzb;

    invoke-direct {v0, p0}, Lbzb;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string v0, "talk_workaround"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->e(Landroid/content/Context;)V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "Dispatcher"

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 56
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return v0

    .line 60
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 64
    sget-wide v4, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->e:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 65
    const-string v1, "Dispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Another restart was just performed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->e:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_3
    sput-wide v2, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->e:J

    .line 70
    const-string v2, "Dispatcher"

    const-string v3, "Accessibility service is out of service, try restarting..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    const v1, 0x7f0800f0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->q:Lcbi;

    const-string v2, "Accessibility"

    const-string v3, "NoAccessibilitySettingsActivity"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/oasisfeng/greenify/AccessibilityDispatcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 87
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 96
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 101
    :try_start_0
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 102
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/oasisfeng/greenify/AccessibilityDispatcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 104
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v7, 0x7f0800c3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    const-string v1, "com.samsung.SMT"

    .line 197
    :try_start_0
    const-string v0, "android.speech.tts.TtsEngines"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    const-string v3, "getDefaultEngine"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 201
    :goto_0
    invoke-static {p0, v1}, Lccq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_1
    return-void

    .line 203
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 205
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080076

    .line 206
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0800c0

    .line 209
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    .line 210
    invoke-static {p0, v6, v3}, Lcom/oasisfeng/greenify/GreenifyShortcut;->a(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 212
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 213
    const-string v2, "Dispatcher"

    invoke-virtual {v0, v2, v5, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    const-class v0, Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Lchz;->a(Ljava/lang/Class;)Lcid;

    move-result-object v0

    const-string v1, "mWindowToken"

    invoke-virtual {v0, v1}, Lcid;->a(Ljava/lang/String;)Lcif;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcif;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 162
    if-eqz v0, :cond_0

    sput-object v0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a:Landroid/os/IBinder;
    :try_end_0
    .catch Lcic; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "Dispatcher"

    const-string v2, "Incompatible ROM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    invoke-virtual {v0, p1}, Lbzb;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 122
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->d:Lceh;

    .line 123
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lceh;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b:Landroid/content/SharedPreferences;

    .line 177
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    invoke-virtual {v0}, Lbzb;->a()V

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "keep_notifications"

    .line 180
    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lceh;

    invoke-direct {v0, p0}, Lceh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->d:Lceh;

    .line 182
    invoke-virtual {v0}, Lceh;->a()V

    .line 184
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->d:Lceh;

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lceh;->b()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    invoke-virtual {v0}, Lbzb;->b()V

    .line 190
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 191
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method protected onServiceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "Dispatcher"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 132
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lbvw;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 136
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->d:Lceh;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    invoke-virtual {v1, v0, v2}, Lbzb;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    .line 139
    invoke-static {v0}, Lceh;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 142
    :goto_0
    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 143
    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 144
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->c:Lbzb;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbzb;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->b:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 156
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "Dispatcher"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbvw;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/oasisfeng/greenify/AccessibilityDispatcher;->a:Landroid/os/IBinder;

    .line 151
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
