.class public Lcom/oasisfeng/greenify/CleanerService;
.super Lbxm;
.source "SourceFile"


# static fields
.field private static l:Z


# instance fields
.field public a:J

.field private final b:Ljava/lang/Runnable;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Lccn;

.field private f:Landroid/app/AlarmManager;

.field private g:Lbwn;

.field private final h:Landroid/os/Handler;

.field private i:Landroid/app/PendingIntent;

.field private j:Ljava/lang/Object;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lbxm;-><init>()V

    .line 162
    new-instance v0, Lbyp;

    invoke-direct {v0, p0}, Lbyp;-><init>(Lcom/oasisfeng/greenify/CleanerService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->b:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lbyq;

    invoke-direct {v0, p0}, Lbyq;-><init>(Lcom/oasisfeng/greenify/CleanerService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->c:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lbyr;

    invoke-direct {v0, p0}, Lbyr;-><init>(Lcom/oasisfeng/greenify/CleanerService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->d:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/CleanerService;)Lbwn;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->g:Lbwn;

    return-object v0
.end method

.method private synthetic a(I)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/CleanerService;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oasisfeng/greenify/CleanerService;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/CleanerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/CleanerService;->a(I)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    invoke-static {p0, v0, p1}, Lcbs;->a(Landroid/content/Context;Lccn;Ljava/util/Collection;)Ljava/util/Map;

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 231
    iget-wide v2, p0, Lcom/oasisfeng/greenify/CleanerService;->k:J

    sub-long v2, v0, v2

    .line 232
    iput-wide v0, p0, Lcom/oasisfeng/greenify/CleanerService;->k:J

    .line 233
    const-wide/16 v0, 0x7530

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 234
    const-string v0, "Cleaner"

    const-string v1, "Skip cleaning in such a short period after last cleaning."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "Cleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing hibernation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcaz;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oasisfeng.greenify.SCOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public static synthetic b(Lcom/oasisfeng/greenify/CleanerService;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->f()Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->d()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->d(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    invoke-static {p0}, Lbym;->a(Lcom/oasisfeng/greenify/CleanerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->f:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 186
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->g:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->e()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    invoke-static {p0}, Lbyn;->a(Lcom/oasisfeng/greenify/CleanerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "Cleaner"

    const-string v2, "Unexpected exception during cleaning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->e(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 67
    return-void
.end method

.method public static synthetic d(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->d()V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;)Z

    .line 72
    return-void
.end method

.method public static synthetic e(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->d()V

    return-void
.end method

.method private e()Z
    .locals 14

    .prologue
    const-wide/32 v12, 0xf4240

    const/4 v10, 0x1

    .line 200
    invoke-static {p0}, Lcaz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string v0, "Cleaner"

    const-string v1, "Automation is not ready, skipping..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return v10

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 206
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    .line 208
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    invoke-virtual {v5}, Lccn;->b()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    iget-object v5, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    invoke-static {p0, v5, v4}, Lcbs;->a(Landroid/content/Context;Lccn;Ljava/util/Collection;)Ljava/util/Map;

    .line 211
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 212
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v0, v8, v0

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cleaner check spent "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-gez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "Cleaner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v6, v2

    div-long/2addr v2, v12

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 219
    :cond_2
    const-string v1, "Cleaner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/oasisfeng/greenify/CleanerService;->d(Landroid/content/Context;)V

    .line 76
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    return-void
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    invoke-static {p0}, Lccq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lccq;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    :cond_2
    const-string v0, "Cleaner"

    const-string v1, "Schedule hibernation in 180s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->h:Landroid/os/Handler;

    invoke-static {p0}, Lbyo;->a(Lcom/oasisfeng/greenify/CleanerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->f:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x30570

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Lbys;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x3e8

    .line 87
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->c(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lbys;->a:Lbys;

    .line 108
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 92
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 93
    iget v0, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-ne v0, v1, :cond_1

    iget-object v0, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-class v0, Lcom/oasisfeng/greenify/CleanerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-boolean v0, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v0, :cond_1

    .line 97
    iget-wide v0, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->l:Lcbi;

    const-string v2, "Restarting"

    iget v3, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 100
    sget-object v0, Lbys;->c:Lbys;

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    sub-long v4, v0, v4

    .line 103
    const-wide/32 v0, 0x1b8ac8

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 104
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->l:Lcbi;

    const-string v2, "Inactive"

    div-long/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 105
    :cond_3
    sget-object v0, Lbys;->b:Lbys;

    goto/16 :goto_0

    .line 107
    :cond_4
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->l:Lcbi;

    const-string v2, "Stopped"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;J)Lcbd;

    .line 108
    sget-object v0, Lbys;->d:Lbys;

    goto/16 :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcaz;->a(Landroid/content/Context;)Z

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


# virtual methods
.method public a(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 153
    const-string v0, "com.oasisfeng.greenify.CLEAN_NOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->d()V

    .line 155
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    invoke-virtual {v0}, Lccn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->g:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/oasisfeng/greenify/CleanerService;->f()Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "Cleaner"

    const-string v1, "Service is starting..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->f:Landroid/app/AlarmManager;

    .line 114
    new-instance v0, Lbwn;

    invoke-direct {v0, p0}, Lbwn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->g:Lbwn;

    .line 115
    new-instance v0, Lccn;

    invoke-direct {v0, p0}, Lccn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/CleanerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.oasisfeng.greenify.CLEAN_NOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    .line 119
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.oasisfeng.greenify.action.FORCE_SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/CleanerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/CleanerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const/4 v0, 0x4

    invoke-static {p0}, Lbyl;->a(Lcom/oasisfeng/greenify/CleanerService;)Landroid/content/SyncStatusObserver;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->j:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oasisfeng/greenify/CleanerService;->l:Z

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oasisfeng/greenify/CleanerService;->l:Z

    .line 135
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "Cleaner"

    const-string v1, "Cancelling pending cleaning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->f:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 138
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->i:Landroid/app/PendingIntent;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->j:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/CleanerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lcom/oasisfeng/greenify/CleanerService;->e:Lccn;

    invoke-virtual {v0}, Lccn;->a()V

    .line 145
    const-string v0, "Cleaner"

    const-string v1, "Service is stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
