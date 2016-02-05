.class public Lcgm;
.super Lcjv;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method

.method private a(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 64
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcgm;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 74
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcgm;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    .line 69
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lcgm;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcgm;Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcgm;->a(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcgm;Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcgm;->a(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcgm;Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcgm;->a(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "system_apps"

    return-object v0
.end method

.method public a(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcgm;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgm;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcgm;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcgm;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/LinkageError;

    invoke-direct {v0}, Ljava/lang/LinkageError;-><init>()V

    throw v0
.end method

.method protected b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 25
    const-string v0, "com.android.server.pm.PackageSettingBase"

    iget-object v1, p0, Lcgm;->f:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    :try_start_0
    const-string v1, "getStopped"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcgm;->a:Ljava/lang/reflect/Method;

    .line 29
    iget-object v1, p0, Lcgm;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const-string v0, "com.android.server.pm.PackageManagerService.ActivityIntentResolver"

    const-string v1, "isFilterStopped"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcgm;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgn;

    invoke-direct {v1, p0}, Lcgn;-><init>(Lcgm;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 46
    const-string v0, "com.android.server.pm.PackageManagerService.ServiceIntentResolver"

    const-string v1, "isFilterStopped"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcgm;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgo;

    invoke-direct {v1, p0}, Lcgo;-><init>(Lcgm;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 52
    const-string v0, "com.android.server.pm.PackageManagerService.ProviderIntentResolver"

    const-string v1, "isFilterStopped"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcgm;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgp;

    invoke-direct {v1, p0}, Lcgp;-><init>(Lcgm;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 56
    :cond_0
    const-string v0, "com.android.server.pm.PackageManagerService"

    const-string v1, "hasSystemFeature"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcgm;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgq;

    invoke-direct {v1, p0}, Lcgq;-><init>(Lcgm;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 60
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcgm;->h:Ljava/lang/reflect/Field;

    .line 34
    iget-object v0, p0, Lcgm;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
