.class public Lchi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final b:Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lchi;->b:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lchi;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 53
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lchi;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lchi;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 19
    return-void
.end method

.method static a(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    :goto_0
    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 48
    :goto_1
    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b()V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/oasisfeng/greenify/GreenifyApplication;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 30
    if-eqz v0, :cond_0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "odex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "DontCrash"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    const-string v0, "DontCrash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App crashed, remove outdated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lchj;

    invoke-direct {v0, v1}, Lchj;-><init>(Ljava/io/File;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 22
    const-class v0, Landroid/content/res/Resources$NotFoundException;

    invoke-static {p2, v0}, Lchi;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lchi;->b()V

    .line 23
    :cond_0
    sget-object v0, Lchi;->b:Ljava/lang/Thread;

    if-eq p1, v0, :cond_1

    const-string v0, "DontCrash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppressed crash in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lchi;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
