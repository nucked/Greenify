.class public Lcom/oasisfeng/nevo/StatusBarNotificationEvo;
.super Lcom/oasisfeng/nevo/StatusBarNotificationCompat;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oasisfeng/nevo/StatusBarNotificationEvo;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:I

.field private static final g:Landroid/app/Notification;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Z

.field private final d:Lcil;

.field private e:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lciu;

    invoke-direct {v0}, Lciu;-><init>()V

    sput-object v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    const-string v0, "NEVO"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->f:I

    .line 188
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->g:Landroid/app/Notification;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v8, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->g:Landroid/app/Notification;

    .line 154
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object v0, p0

    move v7, v6

    .line 153
    invoke-direct/range {v0 .. v11}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcim;->a(Landroid/os/IBinder;)Lcil;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    iput-object v2, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    .line 158
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->c:Z

    .line 159
    iget-boolean v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a:Ljava/lang/String;

    .line 160
    :cond_1
    return-void

    :cond_2
    move-object v4, v2

    .line 153
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;Lcil;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;-><init>(Landroid/os/Parcel;)V

    .line 149
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    .line 150
    return-void

    .line 149
    :cond_0
    new-instance p2, Lcio;

    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p2, v0}, Lcio;-><init>(Landroid/app/Notification;)V

    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcil;Lciu;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;-><init>(Landroid/os/Parcel;Lcil;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lciu;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->f:I

    return v0
.end method


# virtual methods
.method public a()Lcil;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    instance-of v0, v0, Lcim;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    invoke-interface {v0}, Lcil;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    invoke-interface {v0}, Lcil;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;

    invoke-static {v0}, Lgf;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_3
    const-string v1, "Nevo.Sbn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isClearable()Z
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a()Lcil;

    move-result-object v0

    invoke-interface {v0}, Lcil;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    and-int/lit8 v0, v0, 0x22

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOngoing()Z
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a()Lcil;

    move-result-object v0

    invoke-interface {v0}, Lcil;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_0

    .line 118
    and-int/lit16 v0, p2, -0x1001

    invoke-super {p0, p1, v0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    sget v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-super {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    :goto_1
    invoke-static {p0}, Lcir;->c(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    invoke-virtual {p0}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->getPostTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->d:Lcil;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 132
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :goto_3
    iget-boolean v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->c:Z

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Lcio;

    iget-object v1, p0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->e:Landroid/app/Notification;

    invoke-direct {v0, v1}, Lcio;-><init>(Landroid/app/Notification;)V

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 139
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
