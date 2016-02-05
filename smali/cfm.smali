.class public Lcfm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 37
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    array-length v1, p0

    invoke-static {p0, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    const-string v1, "greenify"

    aput-object v1, v0, v5

    .line 41
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 43
    :try_start_0
    const-string v2, "power"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    .line 45
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 46
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 47
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 48
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "version:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lcfg;

    invoke-direct {v0}, Lcfg;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception v0

    aget-object v2, v1, v5

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 61
    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0

    .line 51
    :cond_0
    :try_start_1
    const-string v4, "version:1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Lcfh;

    invoke-direct {v0, v3}, Lcfh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 55
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    aget-object v0, v1, v5

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 61
    aget-object v0, v1, v6

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-object v3
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    sget-object v0, Lcfm;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcfm;->a([Ljava/lang/String;)Ljava/util/List;

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcfm;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    sget-object v0, Lcfm;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcfm;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method
