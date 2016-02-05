.class public Lcfr;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "boost_mode"

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 15
    const-string v0, "com.android.server.pm.PackageManagerService"

    const-string v1, "checkUidPermission"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcfr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfs;

    invoke-direct {v1, p0}, Lcfs;-><init>(Lcfr;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 22
    return-void
.end method
