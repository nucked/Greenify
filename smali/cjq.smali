.class public Lcjq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a()Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcjq;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcjq;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcjq;->a:Ljava/lang/String;

    .line 22
    :cond_0
    sget-object v0, Lcjq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_pkgname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "build.prop"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :goto_1
    return-object v0

    .line 30
    :catch_0
    move-exception v2

    .line 32
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    const-string v0, ""

    goto :goto_1
.end method
