.class public Lchk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 52
    const-string v0, "android.permission.DUMP"

    invoke-static {p0, v0}, Lis;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lchk;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0, p1}, Lchk;->b(Ljava/lang/String;[Ljava/lang/String;)Lchp;

    move-result-object v0

    invoke-static {}, Lchl;->a()Lchq;

    move-result-object v1

    invoke-interface {v0, v1}, Lchp;->a(Lchq;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "Dump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error dumping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)Lchp;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lchm;

    invoke-direct {v0, p0, p1}, Lchm;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
