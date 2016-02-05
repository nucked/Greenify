.class public Lbwo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    if-nez p0, :cond_0

    invoke-static {}, Lbmw;->c()Lbmw;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lbwp;->a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {p0}, Lbwo;->b(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/preference/PreferenceFragment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lbwo;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 46
    invoke-static {p0}, Lbwo;->a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Lbwq;->a(Ljava/lang/String;)Lbku;

    move-result-object v1

    invoke-static {v0, v1}, Lbmx;->a(Ljava/lang/Iterable;Lbku;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {p0, p1}, Lbwo;->b(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/preference/PreferenceGroup;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lbwo;->a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {}, Lbwr;->a()Lbku;

    move-result-object v1

    invoke-static {v0, v1}, Lbmx;->a(Ljava/lang/Iterable;Lbku;)Z

    .line 61
    return-void
.end method

.method private static synthetic b(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 56
    instance-of v0, p0, Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    instance-of v0, p0, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/preference/PreferenceGroup;

    invoke-static {p0}, Lbwo;->b(Landroid/preference/PreferenceGroup;)V

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic b(Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/preference/PreferenceGroup;

    invoke-static {p1, p0}, Lbwo;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Lbwo;->d(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lbws;

    invoke-direct {v0, p0}, Lbws;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method
