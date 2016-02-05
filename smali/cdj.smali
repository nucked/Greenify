.class public Lcdj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.easyroot"

    aput-object v1, v0, v3

    const-string v1, "com.kingroot.kinguser"

    aput-object v1, v0, v4

    const-string v1, "com.kingroot.RootManager"

    aput-object v1, v0, v5

    const-string v1, "com.bestqiang.su"

    aput-object v1, v0, v6

    const-string v1, "com.ifreesoft.ifreesu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.koushikdutta.superuser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eu.chainfire.supersu.pro"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eu.chainfire.supersu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.noshufou.android.su.elite"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.noshufou.android.su"

    aput-object v2, v0, v1

    sput-object v0, Lcdj;->a:[Ljava/lang/String;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sbin"

    aput-object v1, v0, v3

    const-string v1, "/system/bin"

    aput-object v1, v0, v4

    const-string v1, "/system/xbin"

    aput-object v1, v0, v5

    const-string v1, "/data/local/xbin"

    aput-object v1, v0, v6

    const-string v1, "/data/local/bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/system/sd/xbin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/bin/failsafe"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/data/local"

    aput-object v2, v0, v1

    sput-object v0, Lcdj;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcdj;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    invoke-static {p0}, Lcdj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcdj;->d:Ljava/lang/String;

    .line 99
    :cond_0
    sget-object v0, Lcdj;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcdj;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcdj;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 63
    array-length v0, p1

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 82
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :cond_1
    array-length v0, p1

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1, v3, v1}, Lcka;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 66
    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 67
    array-length v2, p1

    const-string v4, "echo"

    aput-object v4, v0, v2

    .line 68
    invoke-static {p0, v0, v3, v1}, Lcka;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    array-length v6, p1

    move v4, v5

    move v0, v5

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v7, p1, v4

    .line 74
    new-array v8, v1, [Ljava/lang/String;

    aput-object v7, v8, v5

    invoke-static {p0, v8, v3, v1}, Lcka;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 75
    if-eqz v7, :cond_3

    .line 77
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 73
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_4
    if-eqz v0, :cond_5

    move-object v0, v2

    :goto_2
    move-object v3, v0

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_2

    .line 82
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcdj;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 46
    const-string v0, "su"

    invoke-static {v0, p0}, Lcdj;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 42
    const-string v0, "su"

    invoke-static {v0}, Lcdj;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    sget-object v3, Lcdj;->b:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 88
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    :cond_0
    :goto_1
    return v0

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "PATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 91
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 93
    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    :try_start_0
    const-string v2, "android.permission.ACCESS_SUPERUSER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 107
    iget-object v0, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 110
    sget-object v2, Lcdj;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {p0}, Lbxd;->a(Landroid/content/Context;)Lbxd;

    move-result-object v4

    invoke-virtual {v4, v0}, Lbxd;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 111
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static varargs b([Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    .line 57
    sget-object v0, Lcdj;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "u:r:system_app:s0"

    invoke-static {v0, v1}, Lckn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcdj;->c:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcdj;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcdj;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    const-string v0, "su"

    goto :goto_0
.end method
