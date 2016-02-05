.class public Lcci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/KeyguardManager;

.field private final c:Landroid/app/KeyguardManager$KeyguardLock;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p0}, Lccj;->a(Lcci;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcci;->e:Ljava/lang/Runnable;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcci;->a:Landroid/content/Context;

    .line 38
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcci;->b:Landroid/app/KeyguardManager;

    .line 39
    iget-object v0, p0, Lcci;->b:Landroid/app/KeyguardManager;

    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcci;->c:Landroid/app/KeyguardManager$KeyguardLock;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcci;->d:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {p0}, Lcci;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/oasisfeng/greenify/DeviceAdmin;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {p0, v1}, Lcbb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-static {p0}, Lcci;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-static {p0}, Lcci;->g(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0}, Lcci;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/oasisfeng/greenify/DeviceAdmin;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcci;)Z
    .locals 1

    invoke-virtual {p0}, Lcci;->b()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 65
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 66
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcci;->e()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 73
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcci;->c:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 111
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v0, v1}, Lcbb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "Unlocker"

    const-string v2, "Go to sleep"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oasisfeng.greenify.action.FORCE_SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    new-instance v1, Lbwn;

    invoke-direct {v1, v0}, Lbwn;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbwn;->a(J)Z

    .line 142
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {v0}, Lcci;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget v1, Lcci;->g:I

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcci;->g:I

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lcck;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x2af8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget v2, Lcci;->g:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    sput v3, Lcci;->g:I

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {v0}, Lcci;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v0, "Unlocker"

    const-string v1, "Go to sleep via root"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lccl;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 139
    :cond_3
    const-string v1, "Unlocker"

    const-string v2, "Go to sleep by device-admin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v0}, Lccm;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static synthetic e()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "input keyevent 26"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcdj;->a([Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcci;->k(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcci;->j(Landroid/content/Context;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lis;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 145
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alt_screen_off"

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

.method private static i(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic j(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0}, Lcom/oasisfeng/greenify/DeviceAdmin;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic k(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 126
    sget v0, Lcci;->g:I

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    sget v2, Lcci;->g:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcci;->g:I

    .line 129
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcci;->f:Z

    .line 154
    return-void
.end method

.method public a(I)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-object v1, p0, Lcci;->b:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcci;->b:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iput-boolean v0, p0, Lcci;->f:Z

    .line 86
    :cond_2
    iget-object v1, p0, Lcci;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcci;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v1, p0, Lcci;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcci;->e:Ljava/lang/Runnable;

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    invoke-direct {p0}, Lcci;->d()V

    .line 91
    iget-object v1, p0, Lcci;->a:Landroid/content/Context;

    invoke-static {v1}, Lcci;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcci;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcci;->g:I

    .line 95
    const-string v2, "screen_off_timeout"

    add-int/lit8 v3, p1, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcci;->c:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    iget-object v1, p0, Lcci;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcci;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-boolean v1, p0, Lcci;->f:Z

    if-eqz v1, :cond_0

    .line 161
    iput-boolean v0, p0, Lcci;->f:Z

    .line 162
    iget-object v0, p0, Lcci;->a:Landroid/content/Context;

    invoke-static {v0}, Lcci;->d(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method
