.class public Lcgf;
.super Lcjv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcjv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "keep_notifications"

    return-object v0
.end method

.method protected b()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const-string v0, "com.android.server.notification.NotificationManagerService"

    .line 21
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    .line 23
    :goto_1
    const-string v2, "cancelAllNotificationsInt"

    invoke-virtual {p0, v0, v2, v1}, Lcgf;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcjw;

    move-result-object v0

    new-instance v1, Lcgg;

    invoke-direct {v1, p0}, Lcgg;-><init>(Lcgf;)V

    invoke-virtual {v0, v1}, Lcjw;->a(Lcjs;)V

    .line 38
    return-void

    .line 18
    :cond_0
    const-string v0, "com.android.server.NotificationManagerService"

    goto :goto_0

    .line 21
    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_1
.end method
