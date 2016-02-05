.class public Lcom/oasisfeng/nevo/StatusBarNotificationCompat;
.super Landroid/service/notification/StatusBarNotification;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oasisfeng/nevo/StatusBarNotificationCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lciq;

    invoke-direct {v0}, Lciq;-><init>()V

    sput-object v0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/service/notification/StatusBarNotification;-><init>(Landroid/os/Parcel;)V

    invoke-static {p0}, Lcir;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a:Ljava/lang/String;

    invoke-static {p0}, Lcir;->b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 2

    .prologue
    .line 45
    invoke-direct/range {p0 .. p11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    .line 46
    invoke-static {p0}, Lcir;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a:Ljava/lang/String;

    invoke-static {p0}, Lcir;->b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/oasisfeng/nevo/StatusBarNotificationCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0
.end method
