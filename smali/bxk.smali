.class public Lbxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 22
    instance-of v0, p0, Lbxk;

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lbxk;

    invoke-direct {v0, p0}, Lbxk;-><init>(Landroid/content/SharedPreferences;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 76
    :goto_0
    return p2

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 68
    :goto_0
    return p2

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 52
    :goto_0
    return p2

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 60
    :goto_0
    return-wide p2

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 44
    :goto_0
    return-object p2

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 85
    :goto_0
    return-object p2

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Never use anonymous class for listener, since it is weakly-referenced in Android SDK."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 34
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbxk;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 38
    return-void
.end method
