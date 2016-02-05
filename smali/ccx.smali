.class public Lccx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 8

    .prologue
    .line 44
    const v0, 0x186a0

    rem-int v0, p0, v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {p0}, Lccx;->b(I)[I

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 49
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget v5, v1, v0

    .line 50
    if-eq v5, v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill -9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcdj;->a([Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 29
    invoke-static {v0}, Lccx;->b(I)[I

    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 40
    :cond_0
    return-void

    .line 31
    :cond_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 34
    array-length v5, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget v6, v2, v1

    .line 35
    if-ne v6, v4, :cond_2

    .line 34
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 37
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v0, :cond_3

    goto :goto_1

    .line 38
    :cond_4
    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1
.end method

.method private static b(I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v2, Lccy;

    invoke-direct {v2, p0}, Lccy;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 74
    :cond_1
    :goto_0
    return-object v0

    .line 70
    :cond_2
    array-length v0, v4

    new-array v0, v0, [I

    .line 71
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 72
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 74
    :cond_3
    array-length v1, v0

    if-eq v2, v1, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    goto :goto_2
.end method
