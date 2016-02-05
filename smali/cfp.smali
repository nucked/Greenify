.class public Lcfp;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "block_notification_abuse"

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 17
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "setServiceForeground"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/Notification;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcfp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcjw;

    move-result-object v0

    new-instance v1, Lcfq;

    invoke-direct {v1, p0}, Lcfq;-><init>(Lcfp;)V

    .line 18
    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 28
    return-void
.end method
