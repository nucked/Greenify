.class public Lcft;
.super Lcjv;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.accounts.AccountAuthenticator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.media.MediaRouteProviderService"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcft;->a:Ljava/util/Collection;

    .line 236
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcft;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method

.method static a(II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    const/16 v2, 0x3e8

    if-eq p0, v2, :cond_0

    const/16 v2, 0x7d0

    if-eq p0, v2, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 205
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v0

    goto :goto_0

    .line 206
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    .line 207
    :try_start_0
    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getFlagsForUid(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 211
    :cond_3
    sget-object v1, Lcft;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 212
    :try_start_1
    sget-object v0, Lcft;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 213
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-nez v0, :cond_4

    .line 215
    invoke-static {v2, p0}, Lcft;->a(Landroid/content/pm/IPackageManager;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 216
    sget-object v1, Lcft;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 217
    :try_start_2
    sget-object v2, Lcft;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 218
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static a(Landroid/content/pm/IPackageManager;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 226
    if-nez v3, :cond_0

    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 227
    :cond_0
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 228
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    const v5, 0x186a0

    div-int v5, p1, v5

    .line 229
    invoke-interface {p0, v0, v1, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    :goto_2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_2

    .line 227
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 124
    const-string v0, "android.content.pm.PackageUserState"

    iget-object v1, p0, Lcft;->f:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    const-string v1, "notLaunched"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 126
    const-string v2, "android.content.pm.PackageParser"

    const-string v3, "generateProviderInfo"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v6, Landroid/content/pm/PackageParser$Provider;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    new-instance v2, Lcfy;

    invoke-direct {v2, p0, v1}, Lcfy;-><init>(Lcft;Ljava/lang/reflect/Field;)V

    invoke-virtual {v0, v2}, Lcjw;->a(Lcjs;)V

    .line 147
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 151
    const-string v0, "com.android.server.pm.PackageManagerService"

    const-string v1, "resolveContentProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfz;

    invoke-direct {v1, p0}, Lcfz;-><init>(Lcft;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 196
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "deep_hibernation"

    return-object v0
.end method

.method a(Landroid/content/Intent;IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/2addr v1, p2

    .line 111
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v2, v3}, Lcft;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    :cond_2
    and-int/lit8 v0, v1, -0x21

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "startService"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/app/IApplicationThread;

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfu;

    invoke-direct {v1, p0}, Lcfu;-><init>(Lcft;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 61
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "bindService"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/app/IApplicationThread;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfv;

    invoke-direct {v1, p0}, Lcfv;-><init>(Lcft;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 68
    const-string v0, "com.android.server.pm.PackageManagerService"

    const-string v1, "queryIntentServices"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfw;

    invoke-direct {v1, p0}, Lcfw;-><init>(Lcft;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 93
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "broadcastIntent"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/app/IApplicationThread;

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfx;

    invoke-direct {v1, p0}, Lcfx;-><init>(Lcft;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcft;->c()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcft;->h()V

    goto :goto_0
.end method
