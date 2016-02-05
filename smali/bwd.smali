.class public Lbwd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method private static a(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 35
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Locale;)Z
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 26
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1, v2}, Lbwd;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    invoke-static {v1, p1}, Lbwd;->a(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 28
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 29
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbwd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbwd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbwd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
