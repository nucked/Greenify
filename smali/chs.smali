.class public Lchs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/AlarmManager;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lchs;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lchs;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lchs;->b:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lchs;->d:Landroid/os/Handler;

    .line 75
    iput-object p2, p0, Lchs;->e:Landroid/os/Handler;

    .line 76
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lchs;->c:Landroid/app/AlarmManager;

    .line 77
    return-void
.end method

.method static synthetic a(Lchs;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lchs;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lchs;->a:Z

    return v0
.end method

.method static synthetic b(Lchs;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lchs;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lchs;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lchs;->c:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic d(Lchs;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lchs;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(JLcht;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 84
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const-wide/16 v0, 0x7530

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {p3, v2, v3}, Lcht;->a(Lcht;J)J

    .line 87
    iget-object v2, p0, Lchs;->d:Landroid/os/Handler;

    invoke-static {p3}, Lcht;->e(Lcht;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v2, p0, Lchs;->d:Landroid/os/Handler;

    invoke-static {p3}, Lcht;->e(Lcht;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.oasisfeng.greenify.TIMER-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lchs;->b:Landroid/content/Context;

    invoke-static {p3}, Lcht;->b(Lcht;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-static {p3}, Lcht;->c(Lcht;)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.oasisfeng.greenify.TIMER-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lchs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lchs;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p3, v0}, Lcht;->a(Lcht;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 98
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 99
    iget-object v2, p0, Lchs;->c:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    invoke-static {p3}, Lcht;->c(Lcht;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 100
    invoke-static {p3, v5}, Lcht;->a(Lcht;Z)Z

    .line 101
    return-void
.end method

.method public a(Lcht;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lchs;->c:Landroid/app/AlarmManager;

    invoke-static {p1}, Lcht;->c(Lcht;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 105
    iget-object v0, p0, Lchs;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcht;->e(Lcht;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
