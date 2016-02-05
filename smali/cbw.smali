.class public Lcbw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/ComponentName;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbw;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/app/ActivityManager$RunningServiceInfo;)Lcbw;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcbw;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbw;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iput-object v1, v0, Lcbw;->b:Landroid/content/ComponentName;

    .line 92
    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcbw;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcbw;

    invoke-direct {v0, p0}, Lcbw;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcbw;->e:Z

    .line 87
    return-object v0
.end method

.method static a(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Lcbw;
    .locals 3

    .prologue
    .line 105
    new-instance v1, Lcbw;

    invoke-direct {v1, p0}, Lcbw;-><init>(Ljava/lang/String;)V

    .line 106
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x96

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcbw;->e:Z

    .line 107
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    iput-object v0, v1, Lcbw;->b:Landroid/content/ComponentName;

    .line 108
    return-object v1

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/app/ActivityManager$RunningServiceInfo;)Lcbw;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcbw;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcbw;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iput-object v1, v0, Lcbw;->b:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    iput-object v1, v0, Lcbw;->c:Ljava/lang/String;

    iget v1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    iput v1, v0, Lcbw;->d:I

    .line 97
    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcbw;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcbw;

    invoke-direct {v0, p0}, Lcbw;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcbw;->f:Z

    .line 102
    return-object v0
.end method
