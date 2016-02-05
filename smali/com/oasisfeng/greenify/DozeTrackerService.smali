.class public Lcom/oasisfeng/greenify/DozeTrackerService;
.super Lbxm;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final a:[J


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/os/PowerManager;

.field private e:Lhm;

.field private f:J

.field private g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oasisfeng/greenify/DozeTrackerService;->a:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x12c
        0x12c
        0x64
        0x12c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lbxm;-><init>()V

    .line 127
    new-instance v0, Lbyz;

    invoke-direct {v0, p0}, Lbyz;-><init>(Lcom/oasisfeng/greenify/DozeTrackerService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->b:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lbza;

    invoke-direct {v0, p0}, Lbza;-><init>(Lcom/oasisfeng/greenify/DozeTrackerService;)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->c:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/DozeTrackerService;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oasisfeng/greenify/DozeTrackerService;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/oasisfeng/greenify/DozeTrackerService;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->g:J

    .line 74
    const-string v0, "DozeTracker"

    const-string v1, "Interactive now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "DozeTracker"

    const-string v1, "Inactive now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->g:J

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/DozeTrackerService;

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

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    new-instance v0, Lgm;

    invoke-direct {v0}, Lgm;-><init>()V

    const-string v1, "Aggressive Doze"

    invoke-virtual {v0, v1}, Lgm;->a(Ljava/lang/CharSequence;)Lgm;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgm;->b(Ljava/lang/CharSequence;)Lgm;

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lgk;

    invoke-direct {v0, p0}, Lgk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lgk;->a(Lgw;)Lgk;

    move-result-object v0

    const v1, 0x7f0e003a

    .line 119
    invoke-virtual {p0, v1}, Lcom/oasisfeng/greenify/DozeTrackerService;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lgk;->c(I)Lgk;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lgk;->a(I)Lgk;

    move-result-object v0

    .line 120
    if-eqz p1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->e:Lhm;

    const-string v2, "DozeTracker"

    const-string v3, "Dozing"

    invoke-virtual {v0, v3}, Lgk;->a(Ljava/lang/CharSequence;)Lgk;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lgk;->a(Z)Lgk;

    move-result-object v0

    invoke-virtual {v0}, Lgk;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v0}, Lhm;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->e:Lhm;

    const-string v2, "DozeTracker"

    const-string v3, "Doze"

    invoke-virtual {v0, v3}, Lgk;->a(Ljava/lang/CharSequence;)Lgk;

    move-result-object v3

    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lgk;->b(Ljava/lang/CharSequence;)Lgk;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lgk;->b(I)Lgk;

    move-result-object v3

    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->d:Landroid/os/PowerManager;

    .line 124
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3, v0}, Lgk;->a([J)Lgk;

    move-result-object v0

    invoke-virtual {v0}, Lgk;->a()Landroid/app/Notification;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v2, v4, v0}, Lhm;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    .line 124
    :cond_3
    sget-object v0, Lcom/oasisfeng/greenify/DozeTrackerService;->a:[J

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-static {p0}, Lcom/oasisfeng/greenify/DozeTrackerService;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 49
    const-class v0, Lcom/oasisfeng/greenify/DozeTrackerService;

    invoke-static {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    return-void
.end method

.method private d()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->d:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "DozeTracker"

    const-string v3, "Enter doze mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-wide v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->f:J

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->b(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v2, "DozeTracker"

    const-string v3, "Become active or start idle maintenance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-wide v2, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->f:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    .line 90
    iget-wide v2, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->f:J

    sub-long v2, v0, v2

    .line 91
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 92
    iput-wide v10, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->f:J

    .line 94
    :goto_1
    iget-object v4, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    iget-object v5, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-wide v8, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->g:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 99
    iget-wide v8, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->g:J

    sub-long/2addr v0, v8

    .line 100
    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    sub-long v0, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 104
    invoke-static {v2, v3, v5}, Lmf;->a(JLjava/lang/StringBuilder;)V

    .line 105
    const/16 v1, 0x3d

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->h:Ljava/util/List;

    invoke-interface {v1, v12, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    const-string v1, "DozeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, v12}, Lcom/oasisfeng/greenify/DozeTrackerService;->b(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->e:Lhm;

    const-string v1, "DozeTracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhm;->a(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    const-string v0, "DozeTracker"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->d:Landroid/os/PowerManager;

    .line 55
    invoke-static {p0}, Lhm;->a(Landroid/content/Context;)Lhm;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->e:Lhm;

    .line 56
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/DozeTrackerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->c:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SCREEN_OFF"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.intent.action.SCREEN_ON"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/oasisfeng/android/content/IntentFilters;->a([Ljava/lang/String;)Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oasisfeng/greenify/DozeTrackerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "DozeTracker"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    iget-object v0, p0, Lcom/oasisfeng/greenify/DozeTrackerService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/DozeTrackerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method
