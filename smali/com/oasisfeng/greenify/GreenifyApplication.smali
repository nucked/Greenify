.class public Lcom/oasisfeng/greenify/GreenifyApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static b:Lcom/oasisfeng/greenify/GreenifyApplication;

.field private static final c:Ljava/lang/Thread;

.field private static final d:Landroid/os/Handler;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->c:Ljava/lang/Thread;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oasisfeng/greenify/GreenifyApplication;->a:J

    .line 115
    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->b:Lcom/oasisfeng/greenify/GreenifyApplication;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbvm;->a()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    sget-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/oasisfeng/greenify/GreenifyApplication;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/oasisfeng/greenify/GreenifyApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {p0}, Lcaq;->a(Ljava/lang/Runnable;)Landroid/os/MessageQueue$IdleHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 98
    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-static {p0}, Lcom/oasisfeng/greenify/GreenifyApplication;->e(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private static synthetic e(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 95
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 96
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "com.oasisfeng.greenify.pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/oasisfeng/greenify/GreenifyApplication;->a:J

    return-wide v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    sput-object p0, Lcom/oasisfeng/greenify/GreenifyApplication;->b:Lcom/oasisfeng/greenify/GreenifyApplication;

    .line 33
    invoke-static {}, Lchi;->a()V

    .line 34
    invoke-static {p0}, Lcbf;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {v1}, Lcjy;->a(Z)V

    .line 37
    const/4 v0, 0x6

    invoke-static {v0, v1}, Lcjy;->a(IZ)V

    .line 38
    invoke-static {p0}, Lcbb;->c(Landroid/content/Context;)Z

    .line 40
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 42
    invoke-static {v0}, Lbxf;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    .line 45
    new-instance v0, Lcar;

    invoke-direct {v0, p0}, Lcar;-><init>(Lcom/oasisfeng/greenify/GreenifyApplication;)V

    invoke-virtual {p0, v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 61
    return-void
.end method
