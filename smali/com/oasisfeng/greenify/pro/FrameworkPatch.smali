.class public Lcom/oasisfeng/greenify/pro/FrameworkPatch;
.super Lcju;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:Lcom/oasisfeng/greenify/pro/FrameworkPatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcfn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcfr;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcft;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcgt;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcgv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcgm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcgf;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcfp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcga;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcgr;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcgh;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a:[Ljava/lang/Class;

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->a:[Ljava/lang/Class;

    const-string v1, "android"

    const-string v2, "com.oasisfeng.greenify"

    const-string v3, "features"

    invoke-direct {p0, v0, v1, v2, v3}, Lcju;-><init>([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object p0, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->c:Lcom/oasisfeng/greenify/pro/FrameworkPatch;

    .line 45
    return-void
.end method

.method public static a()Lcom/oasisfeng/greenify/pro/FrameworkPatch;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->c:Lcom/oasisfeng/greenify/pro/FrameworkPatch;

    return-object v0
.end method

.method public static a(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    sget v1, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 51
    :try_start_0
    invoke-static {}, Lcfl;->b()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 55
    :try_start_1
    const-string v4, "com.oasisfeng.greenify"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :cond_0
    :goto_0
    sget v1, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b:I

    const v2, 0x186a0

    rem-int v2, p0, v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 57
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "com.oasisfeng.greenify"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oasisfeng/greenify/pro/FrameworkPatch;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
