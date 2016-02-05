.class public Lchx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lchx;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-static {}, Lbok;->b()Lbok;

    move-result-object v1

    invoke-virtual {v1}, Lbok;->a()Lbok;

    move-result-object v1

    invoke-static {}, Lchy;->a()Lbkl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbok;->a(Lbkl;)Lbok;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/pm/ResolveInfo;)Ljava/lang/Comparable;
    .locals 1

    invoke-static {p0}, Lchx;->b(Landroid/content/pm/ResolveInfo;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic b(Landroid/content/pm/ResolveInfo;)Ljava/lang/Comparable;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    .line 38
    :cond_0
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x3

    .line 39
    :cond_1
    const-string v2, "secur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x5

    .line 40
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
