.class public abstract Lbxm;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Lbli;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbli",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 141
    invoke-static {p0}, Lbxn;->a(Lbxm;)Lbli;

    move-result-object v0

    invoke-static {v0}, Lblj;->a(Lbli;)Lbli;

    move-result-object v0

    iput-object v0, p0, Lbxm;->a:Lbli;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxm;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lbxm;)Landroid/app/PendingIntent;
    .locals 1

    invoke-direct {p0}, Lbxm;->e()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lbxm;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 41
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lbxm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 45
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lbxm;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-boolean v0, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lbxm;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lbxm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lbxm;->a:Lbli;

    invoke-interface {v1}, Lbli;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 137
    return-void
.end method

.method private synthetic e()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.oasisfeng.action.REVIVE_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lbxm;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public c()V
    .locals 8

    .prologue
    .line 130
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Schedule revival"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lbxm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 132
    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    iget-object v1, p0, Lbxm;->a:Lbli;

    invoke-interface {v1}, Lbli;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 133
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbxm;->b:J

    .line 69
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lbxm;->c()V

    .line 122
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 75
    invoke-virtual {p0}, Lbxm;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0, p3}, Lbxm;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Not ready, stop now."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lbxm;->d()V

    .line 80
    :cond_0
    const/4 v0, 0x2

    .line 104
    :goto_0
    return v0

    .line 83
    :cond_1
    if-eqz p1, :cond_4

    const-string v0, "com.oasisfeng.action.REVIVE_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    iget-wide v0, p0, Lbxm;->b:J

    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lbxm;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/greenify/GreenifyApplication;

    invoke-virtual {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->c()J

    move-result-wide v0

    .line 86
    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Revived by guard with new process."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    invoke-virtual {p0}, Lbxm;->b()V

    .line 102
    :goto_2
    invoke-virtual {p0}, Lbxm;->c()V

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Revived by guard within running process."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 90
    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Revived by system with intent redelivered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lbxm;->b()V

    goto :goto_2

    .line 93
    :cond_5
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Retried to start by system after last error during start."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez p1, :cond_6

    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Intent should never be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {p0, p1, p3}, Lbxm;->a(Landroid/content/Intent;I)V

    goto :goto_2

    .line 97
    :cond_7
    if-nez p1, :cond_8

    .line 98
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    const-string v1, "Revived by system."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lbxm;->b()V

    goto :goto_2

    .line 100
    :cond_8
    invoke-virtual {p0, p1, p3}, Lbxm;->a(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lbxm;->c()V

    .line 127
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    .line 114
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lbxm;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lbxm;->c()V

    goto :goto_0
.end method
