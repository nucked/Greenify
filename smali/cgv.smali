.class public Lcgv;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "wakeup_tracker"

    return-object v0
.end method

.method protected b()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "startProcessLocked"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Landroid/content/pm/ApplicationInfo;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x5

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcgv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    .line 29
    const-class v1, Landroid/os/Parcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recycle"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcgv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v1

    .line 32
    const-string v2, "com.android.server.pm.Settings"

    const-string v3, "setPackageStoppedStateLPw"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v9

    invoke-virtual {p0, v2, v3, v4}, Lcgv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v2

    new-instance v3, Lcgw;

    invoke-direct {v3, p0, v0, v1}, Lcgw;-><init>(Lcgv;Lcjw;Lcjw;)V

    invoke-virtual {v2, v3}, Lcjw;->a(Lcjs;)V

    .line 101
    const-string v0, "com.android.server.pm.PackageManagerService"

    const-string v1, "hasSystemFeature"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v1, v2}, Lcgv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgz;

    invoke-direct {v1, p0}, Lcgz;-><init>(Lcgv;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 104
    return-void
.end method
