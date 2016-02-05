.class public Lcgr;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "telephony_wakeup"

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 16
    const-string v0, "com.android.server.am.ActivityManagerService"

    const-string v1, "broadcastIntentLocked"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcgr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgs;

    invoke-direct {v1, p0}, Lcgs;-><init>(Lcgr;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 26
    return-void
.end method
