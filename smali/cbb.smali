.class public Lcbb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "root"

.field public static final b:Ljava/lang/String; = "restricted"

.field private static final c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static volatile d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcbc;->a()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    sput-object v0, Lcbb;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Lcbb;->d(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    sget-object v1, Lcbb;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 35
    sget-object v1, Lcbb;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const-string v2, "working_mode"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcbb;->d:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "working_mode"

    if-eqz p1, :cond_0

    sget-object v0, Lcbb;->a:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcbb;->d:Ljava/lang/Boolean;

    .line 78
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcbb;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcbb;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic b(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    const-string v0, "working_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "WorkingMode"

    const-string v3, "Working mode changed."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "working_mode"

    const-string v3, ""

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 47
    invoke-static {}, Lcdj;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcbb;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 44
    :sswitch_0
    const-string v4, "restricted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    .line 45
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcbb;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcbb;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        -0x4d52f7a5 -> :sswitch_0
        0x3580e2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 52
    invoke-static {p0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "working_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcbb;->d:Ljava/lang/Boolean;

    .line 58
    if-nez v0, :cond_1

    .line 59
    invoke-static {p0}, Lcbb;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    const-string v2, "WorkingMode"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ROOT"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 62
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 60
    :cond_2
    const-string v0, "Restricted"

    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 66
    const-string v0, "any"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
