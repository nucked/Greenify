.class public Lccg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 25
    if-le v2, v0, :cond_0

    .line 26
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lccg;->b()I

    move-result v2

    if-gt v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 17
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 20
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 3

    .prologue
    .line 31
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcch;

    invoke-direct {v1}, Lcch;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 36
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "DeviceSpec"

    const-string v2, "Cannot detect accurate number of CPU cores"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    goto :goto_0
.end method
