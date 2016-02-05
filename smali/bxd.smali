.class public Lbxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lbxd;->a:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbxd;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lbxd;

    invoke-direct {v0, p0}, Lbxd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object v0, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 78
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 80
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string v0, "<?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method public varargs a([Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lbxd;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 36
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lbxd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lbxd;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v0, "<?>"

    goto :goto_0
.end method
