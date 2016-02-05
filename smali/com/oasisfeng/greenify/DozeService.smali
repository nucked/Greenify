.class public Lcom/oasisfeng/greenify/DozeService;
.super Lbxm;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final a:Landroid/content/Intent;


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/os/PowerManager;

.field private f:Landroid/hardware/display/DisplayManager;

.field private g:Lbwm;

.field private h:Lchs;

.field private i:Lcht;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.device_idle.STEP_IDLE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/oasisfeng/greenify/DozeService;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lbxm;-><init>()V

    .line 128
    new-instance v0, Lbyw;

    invoke-direct {v0, p0}, Lbyw;-><init>(Lcom/oasisfeng/greenify/DozeService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->b:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lbyx;

    invoke-direct {v0, p0}, Lbyx;-><init>(Lcom/oasisfeng/greenify/DozeService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 219
    new-instance v0, Lbyy;

    invoke-direct {v0, p0}, Lbyy;-><init>(Lcom/oasisfeng/greenify/DozeService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->g:Lbwm;

    invoke-virtual {v0}, Lbwm;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "Drowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v1, Lcom/oasisfeng/greenify/DozeService;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/oasisfeng/greenify/DozeService;->b:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move v5, p1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/oasisfeng/greenify/DozeService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/DozeService;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oasisfeng/greenify/DozeService;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/DozeService;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/DozeService;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/DozeService;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/greenify/DozeService;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->d(Ljava/util/List;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 92
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "Drowse"

    const-string v1, "Permission not granted, stopping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/DozeService;->stopSelf()V

    .line 115
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->g:Lbwm;

    invoke-virtual {v0}, Lbwm;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->e:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "Drowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": power plugged, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->i:Lcht;

    invoke-virtual {v0, v1}, Lchs;->a(Lcht;)V

    goto :goto_0

    .line 101
    :cond_3
    if-eqz v0, :cond_2

    const-string v0, "Drowse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": default display is on, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_4
    const-wide/32 v0, 0xea60

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/DozeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 112
    :goto_2
    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x1388

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 113
    const-string v2, "Drowse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": schedule doze in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    iget-object v3, p0, Lcom/oasisfeng/greenify/DozeService;->i:Lcht;

    invoke-virtual {v2, v0, v1, v3}, Lchs;->a(JLcht;)V

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/DozeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/DozeService;)Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->e:Landroid/os/PowerManager;

    return-object v0
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->c(Ljava/util/List;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    const-class v0, Lcom/oasisfeng/greenify/DozeService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/DozeService;)Lcht;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->i:Lcht;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/DozeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 54
    const-class v0, Lcom/oasisfeng/greenify/DozeService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method private static synthetic c(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x1

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 193
    :cond_0
    const-string v3, "Drowse"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_1
    if-nez v1, :cond_2

    .line 196
    const-string v0, "Drowse"

    const-string v1, "Failed to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->n:Lcbi;

    const-string v2, "Finish failed"

    const/16 v3, 0x7c

    invoke-static {v3}, Lbkm;->a(C)Lbkm;

    move-result-object v3

    invoke-virtual {v3, p0}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 199
    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/DozeService;)Lchs;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lchk;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/DozeService;->e()V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->a(I)V

    goto :goto_0
.end method

.method private static synthetic d(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    const-string v4, "Now forced in to idle mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 162
    :cond_0
    :goto_1
    const-string v4, "Drowse"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unable "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    .line 161
    :cond_2
    const-string v4, "not enabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_1

    .line 164
    :cond_3
    if-nez v1, :cond_4

    .line 165
    const-string v0, "Drowse"

    const-string v1, "Failed to prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->n:Lcbi;

    const-string v2, "Prepare failed"

    const/16 v3, 0x7c

    invoke-static {v3}, Lbkm;->a(C)Lbkm;

    move-result-object v3

    invoke-virtual {v3, p0}, Lbkm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 168
    :cond_4
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lccq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lchk;->a(Landroid/content/Context;)Z

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

.method private e()V
    .locals 5

    .prologue
    .line 149
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->g:Lbwm;

    invoke-virtual {v0}, Lbwm;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v0, "Drowse"

    const-string v1, "Prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    const-string v0, "sensorservice"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "restrict"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 156
    const-string v0, "deviceidle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "force-idle"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->b(Ljava/lang/String;[Ljava/lang/String;)Lchp;

    move-result-object v0

    invoke-static {}, Lbyt;->a()Lchr;

    move-result-object v1

    invoke-interface {v0, v1}, Lchp;->a(Lchr;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    const-string v0, "Drowse"

    const-string v1, "Failed to prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->n:Lcbi;

    const-string v2, "Prepare failed"

    const-string v3, "Command"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_2
    :try_start_1
    const-string v0, "sensorservice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_1
    :try_start_2
    const-string v0, "deviceidle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :goto_2
    const-string v0, "Drowse"

    const-string v1, "Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_3
    const-string v0, "deviceidle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->b(Ljava/lang/String;[Ljava/lang/String;)Lchp;

    move-result-object v0

    invoke-static {}, Lbyu;->a()Lchr;

    move-result-object v1

    invoke-interface {v0, v1}, Lchp;->a(Lchr;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string v0, "Drowse"

    const-string v1, "Failed to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->n:Lcbi;

    const-string v2, "Finish failed"

    const-string v3, "Command"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "Drowse"

    const-string v2, "Failed to finish"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to recover from silence"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_1

    .line 182
    :catch_2
    move-exception v0

    .line 183
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to recover from doze"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_2

    .line 172
    :catch_3
    move-exception v0

    .line 173
    :try_start_4
    const-string v1, "Drowse"

    const-string v2, "Failed to prepare"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    const-string v0, "sensorservice"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 181
    :goto_3
    :try_start_6
    const-string v0, "deviceidle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "enable"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 182
    :catch_4
    move-exception v0

    .line 183
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to recover from doze"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto/16 :goto_2

    .line 177
    :catch_5
    move-exception v0

    .line 178
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v1

    const-string v2, "Failed to recover from silence"

    invoke-virtual {v1, v2, v0}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_3

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    :try_start_7
    const-string v1, "sensorservice"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "enable"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 181
    :goto_4
    :try_start_8
    const-string v1, "deviceidle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "enable"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lchk;->a(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    .line 184
    :goto_5
    throw v0

    .line 177
    :catch_6
    move-exception v1

    .line 178
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    const-string v3, "Failed to recover from silence"

    invoke-virtual {v2, v3, v1}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_4

    .line 182
    :catch_7
    move-exception v1

    .line 183
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v2

    const-string v3, "Failed to recover from doze"

    invoke-virtual {v2, v3, v1}, Lcbd;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcbd;

    goto :goto_5
.end method

.method public static synthetic e(Lcom/oasisfeng/greenify/DozeService;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/oasisfeng/greenify/DozeService;->c()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 77
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Start command"

    invoke-direct {p0, v0, v1}, Lcom/oasisfeng/greenify/DozeService;->a(ZLjava/lang/String;)V

    .line 78
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeService;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Revived"

    invoke-direct {p0, v0, v1}, Lcom/oasisfeng/greenify/DozeService;->a(ZLjava/lang/String;)V

    .line 82
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 64
    const-string v0, "Drowse"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->e:Landroid/os/PowerManager;

    .line 66
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->f:Landroid/hardware/display/DisplayManager;

    .line 67
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->f:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 68
    new-instance v0, Lbwm;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->f:Landroid/hardware/display/DisplayManager;

    invoke-direct {v0, v1}, Lbwm;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->g:Lbwm;

    .line 70
    new-instance v0, Lchs;

    invoke-direct {v0, p0}, Lchs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    .line 71
    new-instance v0, Lbyv;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lbyv;-><init>(Lcom/oasisfeng/greenify/DozeService;Lchs;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->i:Lcht;

    .line 73
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->d:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/oasisfeng/android/content/IntentFilters;->a([Ljava/lang/String;)Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/DozeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Drowse"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->f:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 87
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->h:Lchs;

    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeService;->i:Lcht;

    invoke-virtual {v0, v1}, Lchs;->a(Lcht;)V

    .line 88
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
